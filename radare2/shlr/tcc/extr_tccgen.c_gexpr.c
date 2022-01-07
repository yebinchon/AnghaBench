
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expr_eq () ;
 int next () ;
 scalar_t__ tcc_nerr () ;
 char tok ;

void gexpr(void) {
 while (tcc_nerr () == 0) {
  expr_eq ();
  if (tok != ',') {
   break;
  }
  next ();
 }
}
