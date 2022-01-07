
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TOK_LOR ;
 int expr_land_const () ;
 int next () ;
 scalar_t__ tok ;

__attribute__((used)) static void expr_lor_const(void) {
 expr_land_const ();
 while (tok == TOK_LOR) {
  next ();
  expr_land_const ();
 }
}
