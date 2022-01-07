
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expr_and () ;
 int next () ;
 char tok ;

__attribute__((used)) static void expr_xor(void) {
 expr_and ();
 while (tok == '^') {
  next ();
  expr_and ();
 }
}
