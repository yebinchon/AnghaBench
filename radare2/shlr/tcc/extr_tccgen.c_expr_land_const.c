
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TOK_LAND ;
 int expr_or () ;
 int next () ;
 scalar_t__ tok ;

__attribute__((used)) static void expr_land_const(void) {
 expr_or ();
 while (tok == TOK_LAND) {
  next ();
  expr_or ();
 }
}
