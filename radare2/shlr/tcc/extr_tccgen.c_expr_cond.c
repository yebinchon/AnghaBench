
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ const_wanted ;
 int expr_lor () ;
 int expr_lor_const () ;
 int gexpr () ;
 int gnu_ext ;
 int next () ;
 int skip (char) ;
 char tok ;
 int vdup () ;

__attribute__((used)) static void expr_cond(void) {
 if (const_wanted) {
  expr_lor_const ();
  if (tok == '?') {
   vdup ();
   next ();
   if (tok != ':' || !gnu_ext) {
    gexpr ();
   }
   skip (':');
   expr_cond ();
  }
 } else {
  expr_lor ();
 }
}
