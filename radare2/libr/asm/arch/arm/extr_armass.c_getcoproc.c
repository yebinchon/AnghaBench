
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int getcoproc(const char *str) {
 char *ep;
 if (!str || !*str) {
  return -1;
 }
 if (*str == 'p') {
  int coproc = strtol (str + 1, &ep, 10);
  if ((ep[0] != '\0') || (str[1] == '\0')) {
   return -1;
  }
  if (coproc < 16 && coproc >= 0) {
   return coproc;
  }
 }
 return -1;
}
