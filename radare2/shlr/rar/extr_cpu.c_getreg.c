
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int getreg(const char *s) {
 if (s[0]=='r' && s[2]=='\0') {
  int n = s[1]-'0';
  if (n<8) return n;
 }
 return -1;
}
