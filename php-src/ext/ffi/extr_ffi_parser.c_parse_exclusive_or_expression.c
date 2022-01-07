
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;


 int YY__UPARROW ;
 int get_sym () ;
 int parse_and_expression (int,int *) ;
 int zend_ffi_expr_bw_xor (int *,int *) ;

__attribute__((used)) static int parse_exclusive_or_expression(int sym, zend_ffi_val *val) {
 zend_ffi_val op2;
 sym = parse_and_expression(sym, val);
 while (sym == YY__UPARROW) {
  sym = get_sym();
  sym = parse_and_expression(sym, &op2);
  zend_ffi_expr_bw_xor(val, &op2);
 }
 return sym;
}
