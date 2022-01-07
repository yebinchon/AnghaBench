
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char SDB_RS ;

__attribute__((used)) static int astrcmp(const char *a, const char *b) {
 register char va = *a;
 register char vb = *b;
 for (;;) {
  if (va == '\0' || va == SDB_RS) {
   if (vb == '\0' || vb == SDB_RS) {
    return 0;
   }
   return -1;
  }
  if (vb == '\0' || vb == SDB_RS) {
   return 1;
  }
  if (va != vb) {
   return (va > vb) ? 1 : -1;
  }
  va = *(++a);
  vb = *(++b);
 }
}
