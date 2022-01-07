
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;
typedef int zend_ffi_dcl ;







 int YY_IN_SET (int,int const,char*) ;
 int YY__RBRACK ;
 int YY__RPAREN ;




 int ZEND_FFI_ATTR_INIT ;
 int get_sym () ;
 int parse_CHARACTER (int,int *) ;
 int parse_DECNUMBER (int,int *) ;
 int parse_FLOATNUMBER (int,int *) ;
 int parse_HEXNUMBER (int,int *) ;
 int parse_ID (int,char const**,size_t*) ;
 int parse_OCTNUMBER (int,int *) ;
 int parse_STRING (int,int *) ;
 int parse_cast_expression (int,int *) ;
 int parse_expr_list (int) ;
 int parse_expression (int,int *) ;
 int parse_type_name (int,int *) ;
 int synpred_5 (int) ;
 int synpred_6 (int) ;
 int yy_error_sym (char*,int) ;
 int zend_ffi_expr_alignof_type (int *,int *) ;
 int zend_ffi_expr_alignof_val (int *) ;
 int zend_ffi_expr_bool_not (int *) ;
 int zend_ffi_expr_bw_not (int *) ;
 int zend_ffi_expr_neg (int *) ;
 int zend_ffi_expr_plus (int *) ;
 int zend_ffi_expr_sizeof_type (int *,int *) ;
 int zend_ffi_expr_sizeof_val (int *) ;
 int zend_ffi_resolve_const (char const*,size_t,int *) ;
 int zend_ffi_val_error (int *) ;

__attribute__((used)) static int parse_unary_expression(int sym, zend_ffi_val *val) {
 const char *name;
 size_t name_len;
 zend_ffi_dcl dcl = ZEND_FFI_ATTR_INIT;
 switch (sym) {
  case 146:
   sym = parse_ID(sym, &name, &name_len);
   zend_ffi_resolve_const(name, name_len, val);
   while (YY_IN_SET(sym, (139,138,132,136,133,135), "\010\000\000\000\000\000\002\020\000\200\003\000\000")) {
    switch (sym) {
     case 139:
      sym = get_sym();
      sym = parse_expr_list(sym);
      if (sym != YY__RBRACK) {
       yy_error_sym("']' expected, got", sym);
      }
      sym = get_sym();
      break;
     case 138:
      sym = get_sym();
      if (YY_IN_SET(sym, (138,146,145,149,147,148,143,150,133,135,141,131,134,137,130,140,144,142,129,128), "\010\000\000\000\000\000\001\000\004\030\377\376\000")) {
       sym = parse_expr_list(sym);
      }
      if (sym != YY__RPAREN) {
       yy_error_sym("')' expected, got", sym);
      }
      sym = get_sym();
      break;
     case 132:
      sym = get_sym();
      sym = parse_ID(sym, &name, &name_len);
      break;
     case 136:
      sym = get_sym();
      sym = parse_ID(sym, &name, &name_len);
      break;
     case 133:
      sym = get_sym();
      break;
     default:
      sym = get_sym();
      break;
    }
    zend_ffi_val_error(val);
   }
   break;
  case 145:
   sym = parse_OCTNUMBER(sym, val);
   break;
  case 149:
   sym = parse_DECNUMBER(sym, val);
   break;
  case 147:
   sym = parse_HEXNUMBER(sym, val);
   break;
  case 148:
   sym = parse_FLOATNUMBER(sym, val);
   break;
  case 143:
   sym = parse_STRING(sym, val);
   break;
  case 150:
   sym = parse_CHARACTER(sym, val);
   break;
  case 138:
   sym = get_sym();
   sym = parse_expression(sym, val);
   if (sym != YY__RPAREN) {
    yy_error_sym("')' expected, got", sym);
   }
   sym = get_sym();
   break;
  case 133:
   sym = get_sym();
   sym = parse_unary_expression(sym, val);
   zend_ffi_val_error(val);
   break;
  case 135:
   sym = get_sym();
   sym = parse_unary_expression(sym, val);
   zend_ffi_val_error(val);
   break;
  case 141:
   sym = get_sym();
   sym = parse_cast_expression(sym, val);
   zend_ffi_val_error(val);
   break;
  case 131:
   sym = get_sym();
   sym = parse_cast_expression(sym, val);
   zend_ffi_val_error(val);
   break;
  case 134:
   sym = get_sym();
   sym = parse_cast_expression(sym, val);
   zend_ffi_expr_plus(val);
   break;
  case 137:
   sym = get_sym();
   sym = parse_cast_expression(sym, val);
   zend_ffi_expr_neg(val);
   break;
  case 130:
   sym = get_sym();
   sym = parse_cast_expression(sym, val);
   zend_ffi_expr_bw_not(val);
   break;
  case 140:
   sym = get_sym();
   sym = parse_cast_expression(sym, val);
   zend_ffi_expr_bool_not(val);
   break;
  case 144:
   sym = get_sym();
   if ((sym == 138) && synpred_5(sym)) {
    sym = get_sym();
    sym = parse_type_name(sym, &dcl);
    if (sym != YY__RPAREN) {
     yy_error_sym("')' expected, got", sym);
    }
    sym = get_sym();
    zend_ffi_expr_sizeof_type(val, &dcl);
   } else if (YY_IN_SET(sym, (146,145,149,147,148,143,150,138,133,135,141,131,134,137,130,140,144,142,129,128), "\010\000\000\000\000\000\001\000\004\030\377\376\000")) {
    sym = parse_unary_expression(sym, val);
    zend_ffi_expr_sizeof_val(val);
   } else {
    yy_error_sym("unexpected", sym);
   }
   break;
  case 142:
   sym = get_sym();
   if (sym != 138) {
    yy_error_sym("'(' expected, got", sym);
   }
   sym = get_sym();
   sym = parse_type_name(sym, &dcl);
   if (sym != YY__RPAREN) {
    yy_error_sym("')' expected, got", sym);
   }
   sym = get_sym();
   zend_ffi_expr_alignof_type(val, &dcl);
   break;
  case 129:
  case 128:
   sym = get_sym();
   if ((sym == 138) && synpred_6(sym)) {
    sym = get_sym();
    sym = parse_type_name(sym, &dcl);
    if (sym != YY__RPAREN) {
     yy_error_sym("')' expected, got", sym);
    }
    sym = get_sym();
    zend_ffi_expr_alignof_type(val, &dcl);
   } else if (YY_IN_SET(sym, (146,145,149,147,148,143,150,138,133,135,141,131,134,137,130,140,144,142,129,128), "\010\000\000\000\000\000\001\000\004\030\377\376\000")) {
    sym = parse_unary_expression(sym, val);
    zend_ffi_expr_alignof_val(val);
   } else {
    yy_error_sym("unexpected", sym);
   }
   break;
  default:
   yy_error_sym("unexpected", sym);
 }
 return sym;
}
