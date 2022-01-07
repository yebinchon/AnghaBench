
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_PRINTABLE (char) ;
 char* malloc (int) ;

__attribute__((used)) static char *getstring(char *b, int l) {
 char *r, *res = malloc (l + 1);
 int i;
 if (!res) {
  return ((void*)0);
 }
 for (i = 0, r = res; i < l; b++, i++) {
  if (IS_PRINTABLE (*b)) {
   *r++ = *b;
  }
 }
 *r = 0;
 return res;
}
