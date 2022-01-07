
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;
typedef int zend_ffi_dcl ;


 int YY_ID ;
 scalar_t__ YY_IN_SET (int,int ,char*) ;
 int YY__COLON ;
 int YY__COMMA ;
 int YY__LPAREN ;
 int YY__RBRACE ;
 int YY__SEMICOLON ;
 int YY__STAR ;
 int YY___ATTRIBUTE ;
 int YY___ATTRIBUTE__ ;
 int YY___CDECL ;
 int YY___DECLSPEC ;
 int YY___FASTCALL ;
 int YY___STDCALL ;
 int YY___THISCALL ;
 int YY___VECTORCALL ;
 int get_sym () ;
 int parse_attributes (int,int *) ;
 int parse_constant_expression (int,int *) ;
 int parse_declarator (int,int *,char const**,size_t*) ;
 int yy_error_sym (char*,int) ;
 int zend_ffi_add_bit_field (int *,char const*,size_t,int *,int *) ;
 int zend_ffi_add_field (int *,char const*,size_t,int *) ;

__attribute__((used)) static int parse_struct_declarator(int sym, zend_ffi_dcl *struct_dcl, zend_ffi_dcl *field_dcl) {
 const char *name = ((void*)0);
 size_t name_len = 0;
 zend_ffi_val bits;
 if (sym == YY__STAR || sym == YY_ID || sym == YY__LPAREN) {
  sym = parse_declarator(sym, field_dcl, &name, &name_len);
  if (sym == YY__COLON) {
   sym = get_sym();
   sym = parse_constant_expression(sym, &bits);
   if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
    sym = parse_attributes(sym, field_dcl);
   }
   zend_ffi_add_bit_field(struct_dcl, name, name_len, field_dcl, &bits);
  } else if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL,YY__COMMA,YY__SEMICOLON,YY__RBRACE), "\140\000\000\000\000\020\360\017\000\000\000\000\000")) {
   if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
    sym = parse_attributes(sym, field_dcl);
   }
   zend_ffi_add_field(struct_dcl, name, name_len, field_dcl);
  } else {
   yy_error_sym("unexpected", sym);
  }
 } else if (sym == YY__COLON) {
  sym = get_sym();
  sym = parse_constant_expression(sym, &bits);
  zend_ffi_add_bit_field(struct_dcl, ((void*)0), 0, field_dcl, &bits);
 } else {
  yy_error_sym("unexpected", sym);
 }
 return sym;
}
