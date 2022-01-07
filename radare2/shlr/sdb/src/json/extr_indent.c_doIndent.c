
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void doIndent(int idt, char **o, const char *tab) {
 int i;
 char *x;
 for (i = 0; i < idt; i++) {
  for (x = (char *) tab; *x; x++) {
   *(*o)++ = *x;
  }
 }
}
