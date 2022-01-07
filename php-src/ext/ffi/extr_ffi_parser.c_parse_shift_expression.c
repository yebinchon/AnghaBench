
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;


 int YY__GREATER_GREATER ;
 int YY__LESS_LESS ;
 int get_sym () ;
 int parse_additive_expression (int,int *) ;
 int zend_ffi_expr_shift_left (int *,int *) ;
 int zend_ffi_expr_shift_right (int *,int *) ;

__attribute__((used)) static int parse_shift_expression(int sym, zend_ffi_val *val) {
 zend_ffi_val op2;
 sym = parse_additive_expression(sym, val);
 while (sym == YY__LESS_LESS || sym == YY__GREATER_GREATER) {
  if (sym == YY__LESS_LESS) {
   sym = get_sym();
   sym = parse_additive_expression(sym, &op2);
   zend_ffi_expr_shift_left(val, &op2);
  } else {
   sym = get_sym();
   sym = parse_additive_expression(sym, &op2);
   zend_ffi_expr_shift_right(val, &op2);
  }
 }
 return sym;
}
