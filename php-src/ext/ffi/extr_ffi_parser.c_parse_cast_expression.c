
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;
typedef int zend_ffi_dcl ;


 int YY__LPAREN ;
 int YY__RPAREN ;
 int ZEND_FFI_ATTR_INIT ;
 int get_sym () ;
 int parse_type_name (int,int *) ;
 int parse_unary_expression (int,int *) ;
 scalar_t__ synpred_4 (int) ;
 int yy_error_sym (char*,int) ;
 int zend_ffi_expr_cast (int *,int *) ;

__attribute__((used)) static int parse_cast_expression(int sym, zend_ffi_val *val) {
 int do_cast = 0;
 zend_ffi_dcl dcl = ZEND_FFI_ATTR_INIT;
 if ((sym == YY__LPAREN) && synpred_4(sym)) {
  sym = get_sym();
  sym = parse_type_name(sym, &dcl);
  if (sym != YY__RPAREN) {
   yy_error_sym("')' expected, got", sym);
  }
  sym = get_sym();
  do_cast = 1;
 }
 sym = parse_unary_expression(sym, val);
 if (do_cast) zend_ffi_expr_cast(val, &dcl);
 return sym;
}
