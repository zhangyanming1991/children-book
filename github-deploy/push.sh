#!/bin/bash
cd "/c/Users/lmy/Desktop/小孩读物/github-deploy"
export GIT_ASKPASS=/tmp/gh_askpass.sh
cat > /tmp/gh_askpass.sh <<'EOF'
#!/bin/bash
case "$1" in
  *Username*) echo "zym1991224" ;;
  *Password*) echo "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" ;;
esac
EOF
chmod +x /tmp/gh_askpass.sh
git push -u origin master 2>&1
echo "=== PUSH EXIT: $? ==="
