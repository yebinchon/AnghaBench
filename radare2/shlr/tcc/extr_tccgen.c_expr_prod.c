
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int next () ;
 char tok ;
 int unary () ;

void expr_prod(void) {
 unary ();
 while (tok == '*' || tok == '/' || tok == '%') {
  next ();
  unary ();
 }
}
