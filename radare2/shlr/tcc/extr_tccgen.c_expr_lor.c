
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TOK_LOR ;
 int expr_land () ;
 int next () ;
 scalar_t__ tcc_nerr () ;
 scalar_t__ tok ;

__attribute__((used)) static void expr_lor(void) {
 expr_land ();
 if (tok == TOK_LOR) {
  while (tcc_nerr () == 0) {
   if (tok != TOK_LOR) {
    break;
   }
   next ();
   expr_land ();
  }
 }
}
