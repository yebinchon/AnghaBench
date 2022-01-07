
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;


 int YY__AND ;
 int get_sym () ;
 int parse_equality_expression (int,int *) ;
 int zend_ffi_expr_bw_and (int *,int *) ;

__attribute__((used)) static int parse_and_expression(int sym, zend_ffi_val *val) {
 zend_ffi_val op2;
 sym = parse_equality_expression(sym, val);
 while (sym == YY__AND) {
  sym = get_sym();
  sym = parse_equality_expression(sym, &op2);
  zend_ffi_expr_bw_and(val, &op2);
 }
 return sym;
}
