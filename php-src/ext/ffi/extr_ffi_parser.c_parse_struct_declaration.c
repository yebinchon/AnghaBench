
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






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
 int ZEND_FFI_ATTR_INIT ;
 int get_sym () ;
 int parse_attributes (int,int *) ;
 int parse_specifier_qualifier_list (int,int *) ;
 int parse_struct_declarator (int,int *,int *) ;
 int yy_error_sym (char*,int) ;
 int zend_ffi_add_anonymous_field (int *,int *) ;

__attribute__((used)) static int parse_struct_declaration(int sym, zend_ffi_dcl *struct_dcl) {
 zend_ffi_dcl common_field_dcl = ZEND_FFI_ATTR_INIT;
 sym = parse_specifier_qualifier_list(sym, &common_field_dcl);
 if (sym == YY__SEMICOLON || sym == YY__RBRACE) {
  zend_ffi_add_anonymous_field(struct_dcl, &common_field_dcl);
 } else if (sym == YY__STAR || sym == YY_ID || sym == YY__LPAREN || sym == YY__COLON) {
  sym = parse_struct_declarator(sym, struct_dcl, &common_field_dcl);
  while (sym == YY__COMMA) {
   sym = get_sym();
   zend_ffi_dcl field_dcl = common_field_dcl;
   if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
    sym = parse_attributes(sym, &field_dcl);
   }
   sym = parse_struct_declarator(sym, struct_dcl, &field_dcl);
  }
 } else {
  yy_error_sym("unexpected", sym);
 }
 return sym;
}
