
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;


 int YY__AND_AND ;
 int get_sym () ;
 int parse_inclusive_or_expression (int,int *) ;
 int zend_ffi_expr_bool_and (int *,int *) ;

__attribute__((used)) static int parse_logical_and_expression(int sym, zend_ffi_val *val) {
 zend_ffi_val op2;
 sym = parse_inclusive_or_expression(sym, val);
 while (sym == YY__AND_AND) {
  sym = get_sym();
  sym = parse_inclusive_or_expression(sym, &op2);
  zend_ffi_expr_bool_and(val, &op2);
 }
 return sym;
}
