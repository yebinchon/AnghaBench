
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;
typedef int zend_ffi_dcl ;


 int YY_ID ;
 scalar_t__ YY_IN_SET (int,int,char*) ;
 int YY__COMMA ;
 int YY__LPAREN ;
 int YY__RPAREN ;
 int ZEND_FFI_ABI_CDECL ;
 int ZEND_FFI_ABI_FASTCALL ;
 int ZEND_FFI_ABI_STDCALL ;
 int ZEND_FFI_ABI_THISCALL ;
 int ZEND_FFI_ABI_VECTORCALL ;
 int get_sym () ;
 int parse_ID (int,char const**,size_t*) ;
 int parse_assignment_expression (int,int *) ;
 int parse_attrib (int,int *) ;
 int yy_error_sym (char*,int) ;
 int zend_ffi_add_msvc_attribute_value (int *,char const*,size_t,int *) ;
 int zend_ffi_set_abi (int *,int ) ;

__attribute__((used)) static int parse_attributes(int sym, zend_ffi_dcl *dcl) {
 const char *name;
 size_t name_len;
 zend_ffi_val val;
 do {
  switch (sym) {
   case 135:
   case 134:
    sym = get_sym();
    if (sym != YY__LPAREN) {
     yy_error_sym("'(' expected, got", sym);
    }
    sym = get_sym();
    if (sym != YY__LPAREN) {
     yy_error_sym("'(' expected, got", sym);
    }
    sym = get_sym();
    sym = parse_attrib(sym, dcl);
    while (sym == YY__COMMA) {
     sym = get_sym();
     sym = parse_attrib(sym, dcl);
    }
    if (sym != YY__RPAREN) {
     yy_error_sym("')' expected, got", sym);
    }
    sym = get_sym();
    if (sym != YY__RPAREN) {
     yy_error_sym("')' expected, got", sym);
    }
    sym = get_sym();
    break;
   case 132:
    sym = get_sym();
    if (sym != YY__LPAREN) {
     yy_error_sym("'(' expected, got", sym);
    }
    sym = get_sym();
    do {
     sym = parse_ID(sym, &name, &name_len);
     if (sym == YY__LPAREN) {
      sym = get_sym();
      sym = parse_assignment_expression(sym, &val);
      zend_ffi_add_msvc_attribute_value(dcl, name, name_len, &val);
      if (sym != YY__RPAREN) {
       yy_error_sym("')' expected, got", sym);
      }
      sym = get_sym();
     }
    } while (sym == YY_ID);
    if (sym != YY__RPAREN) {
     yy_error_sym("')' expected, got", sym);
    }
    sym = get_sym();
    break;
   case 133:
    sym = get_sym();
    zend_ffi_set_abi(dcl, ZEND_FFI_ABI_CDECL);
    break;
   case 130:
    sym = get_sym();
    zend_ffi_set_abi(dcl, ZEND_FFI_ABI_STDCALL);
    break;
   case 131:
    sym = get_sym();
    zend_ffi_set_abi(dcl, ZEND_FFI_ABI_FASTCALL);
    break;
   case 129:
    sym = get_sym();
    zend_ffi_set_abi(dcl, ZEND_FFI_ABI_THISCALL);
    break;
   case 128:
    sym = get_sym();
    zend_ffi_set_abi(dcl, ZEND_FFI_ABI_VECTORCALL);
    break;
   default:
    yy_error_sym("unexpected", sym);
  }
 } while (YY_IN_SET(sym, (135,134,132,133,130,131,129,128), "\000\000\000\000\000\000\360\017\000\000\000\000\000"));
 return sym;
}
