
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ zend_ffi_dcl ;
typedef int zend_bool ;


 scalar_t__ YY_IN_SET (int,int ,char*) ;
 int YY__LBRACK ;
 int YY__LPAREN ;
 int YY__RPAREN ;
 int YY__STAR ;
 int YY___ATTRIBUTE ;
 int YY___ATTRIBUTE__ ;
 int YY___CDECL ;
 int YY___DECLSPEC ;
 int YY___FASTCALL ;
 int YY___STDCALL ;
 int YY___THISCALL ;
 int YY___VECTORCALL ;
 int ZEND_FFI_DCL_CHAR ;
 int get_sym () ;
 int parse_array_or_function_declarators (int,TYPE_1__*,TYPE_1__*) ;
 int parse_attributes (int,TYPE_1__*) ;
 int parse_pointer (int,TYPE_1__*) ;
 scalar_t__ synpred_2 (int) ;
 int yy_error_sym (char*,int) ;
 int zend_ffi_nested_declaration (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int parse_abstract_declarator(int sym, zend_ffi_dcl *dcl) {
 zend_ffi_dcl nested_dcl = {ZEND_FFI_DCL_CHAR, 0, 0, 0, ((void*)0)};
 zend_bool nested = 0;
 if (sym == YY__STAR) {
  sym = parse_pointer(sym, dcl);
 }
 if ((sym == YY__LPAREN) && synpred_2(sym)) {
  sym = get_sym();
  if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
   sym = parse_attributes(sym, &nested_dcl);
  }
  sym = parse_abstract_declarator(sym, &nested_dcl);
  if (sym != YY__RPAREN) {
   yy_error_sym("')' expected, got", sym);
  }
  sym = get_sym();
  nested = 1;
 }
 if (sym == YY__LBRACK || sym == YY__LPAREN) {
  sym = parse_array_or_function_declarators(sym, dcl, &nested_dcl);
 }
 if (nested) zend_ffi_nested_declaration(dcl, &nested_dcl);
 return sym;
}
