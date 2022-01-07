
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int a2d (char) ;

__attribute__((used)) static char a2i(char ch, char **src, int base, int *nump) {
  char *p = *src;
  int num = 0;
  int digit;
  while ((digit = a2d(ch)) >= 0) {
    if (digit > base)
      break;
    num = num * base + digit;
    ch = *p++;
  }
  *src = p;
  *nump = num;
  return ch;
}
