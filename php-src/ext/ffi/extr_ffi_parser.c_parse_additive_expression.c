
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;


 int YY__MINUS ;
 int YY__PLUS ;
 int get_sym () ;
 int parse_multiplicative_expression (int,int *) ;
 int zend_ffi_expr_add (int *,int *) ;
 int zend_ffi_expr_sub (int *,int *) ;

__attribute__((used)) static int parse_additive_expression(int sym, zend_ffi_val *val) {
 zend_ffi_val op2;
 sym = parse_multiplicative_expression(sym, val);
 while (sym == YY__PLUS || sym == YY__MINUS) {
  if (sym == YY__PLUS) {
   sym = get_sym();
   sym = parse_multiplicative_expression(sym, &op2);
   zend_ffi_expr_add(val, &op2);
  } else {
   sym = get_sym();
   sym = parse_multiplicative_expression(sym, &op2);
   zend_ffi_expr_sub(val, &op2);
  }
 }
 return sym;
}
