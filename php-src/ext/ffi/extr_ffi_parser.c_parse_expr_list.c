
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;


 int YY__COMMA ;
 int get_sym () ;
 int parse_assignment_expression (int,int *) ;

__attribute__((used)) static int parse_expr_list(int sym) {
 zend_ffi_val dummy;
 sym = parse_assignment_expression(sym, &dummy);
 while (sym == YY__COMMA) {
  sym = get_sym();
  sym = parse_assignment_expression(sym, &dummy);
 }
 return sym;
}
