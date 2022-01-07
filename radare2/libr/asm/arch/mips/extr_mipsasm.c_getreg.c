
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eprintf (char*,...) ;
 scalar_t__ r_num_get (int *,char const*) ;
 scalar_t__* regs ;
 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static int getreg(const char *p) {
 int n;
 if (!p || !*p) {
  eprintf ("Missing argument\n");
  return -1;
 }

 for (n = 0; regs[n]; n++) {
  if (!strcmp (p, regs[n])) {
   return n;
  }
 }

 if (p[0] == '-') {
  n = (int) r_num_get (((void*)0), &p[1]);
  n = -n;
 } else {
  n = (int) r_num_get (((void*)0), p);
 }
 if (n != 0 || p[0] == '0') {
  return n;
 }
 eprintf ("Invalid reg name (%s) at pos %d\n", p, n);
 return -1;
}
