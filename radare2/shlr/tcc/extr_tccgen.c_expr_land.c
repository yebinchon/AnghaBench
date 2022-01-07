
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TOK_LAND ;
 int expr_or () ;
 int next () ;
 scalar_t__ tcc_nerr () ;
 scalar_t__ tok ;

__attribute__((used)) static void expr_land(void) {
 expr_or ();
 if (tok == TOK_LAND) {
  while (tcc_nerr () == 0) {
   if (tok != TOK_LAND) {
    break;
   }
   next ();
   expr_or ();
  }
 }
}
