
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 scalar_t__ IS_PRINTABLE (char const) ;

__attribute__((used)) static inline int __strnlen(const char *str, int len) {
 int l = 0;
 while (IS_PRINTABLE (*str) && --len) {
  if (((ut8)*str) == 0xff) {
   break;
  }
  str++;
  l++;
 }
 return l + 1;
}
