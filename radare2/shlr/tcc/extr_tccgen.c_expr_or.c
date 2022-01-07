
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expr_xor () ;
 int next () ;
 char tok ;

__attribute__((used)) static void expr_or(void) {
 expr_xor ();
 while (tok == '|') {
  next ();
  expr_xor ();
 }
}
