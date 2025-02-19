
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;


 int YY__GREATER ;
 int YY__GREATER_EQUAL ;
 int YY__LESS ;
 int YY__LESS_EQUAL ;
 int get_sym () ;
 int parse_shift_expression (int,int *) ;
 int zend_ffi_expr_is_greater (int *,int *) ;
 int zend_ffi_expr_is_greater_or_equal (int *,int *) ;
 int zend_ffi_expr_is_less (int *,int *) ;
 int zend_ffi_expr_is_less_or_equal (int *,int *) ;

__attribute__((used)) static int parse_relational_expression(int sym, zend_ffi_val *val) {
 zend_ffi_val op2;
 sym = parse_shift_expression(sym, val);
 while (sym == YY__LESS || sym == YY__GREATER || sym == YY__LESS_EQUAL || sym == YY__GREATER_EQUAL) {
  if (sym == YY__LESS) {
   sym = get_sym();
   sym = parse_shift_expression(sym, &op2);
   zend_ffi_expr_is_less(val, &op2);
  } else if (sym == YY__GREATER) {
   sym = get_sym();
   sym = parse_shift_expression(sym, &op2);
   zend_ffi_expr_is_greater(val, &op2);
  } else if (sym == YY__LESS_EQUAL) {
   sym = get_sym();
   sym = parse_shift_expression(sym, &op2);
   zend_ffi_expr_is_less_or_equal(val, &op2);
  } else {
   sym = get_sym();
   sym = parse_shift_expression(sym, &op2);
   zend_ffi_expr_is_greater_or_equal(val, &op2);
  }
 }
 return sym;
}
