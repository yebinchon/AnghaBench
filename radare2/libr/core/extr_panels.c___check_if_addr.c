
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ R_STR_ISNOTEMPTY (char const*) ;

bool __check_if_addr(const char *c, int len) {
 if (len < 2) {
  return 0;
 }
 int i = 0;
 for (; i < len; i++) {
  if (R_STR_ISNOTEMPTY (c + i) && R_STR_ISNOTEMPTY (c+ i + 1) &&
    c[i] == '0' && c[i + 1] == 'x') {
   return 1;
  }
 }
 return 0;
}
