
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_dcl ;


 int YY_CONST ;
 scalar_t__ YY_IN_SET (int,int ,char*) ;
 int YY_RESTRICT ;
 int YY_VOLATILE ;
 int YY__ATOMIC ;
 int YY___ATTRIBUTE ;
 int YY___ATTRIBUTE__ ;
 int YY___CDECL ;
 int YY___CONST ;
 int YY___CONST__ ;
 int YY___DECLSPEC ;
 int YY___FASTCALL ;
 int YY___RESTRICT ;
 int YY___RESTRICT__ ;
 int YY___STDCALL ;
 int YY___THISCALL ;
 int YY___VECTORCALL ;
 int YY___VOLATILE ;
 int YY___VOLATILE__ ;
 int parse_attributes (int,int *) ;
 int parse_type_qualifier (int,int *) ;
 int yy_error_sym (char*,int) ;

__attribute__((used)) static int parse_type_qualifier_list(int sym, zend_ffi_dcl *dcl) {
 do {
  if (YY_IN_SET(sym, (YY_CONST,YY___CONST,YY___CONST__,YY_RESTRICT,YY___RESTRICT,YY___RESTRICT__,YY_VOLATILE,YY___VOLATILE,YY___VOLATILE__,YY__ATOMIC), "\000\000\376\007\000\000\000\000\000\000\000\000\000")) {
   sym = parse_type_qualifier(sym, dcl);
  } else if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
   sym = parse_attributes(sym, dcl);
  } else {
   yy_error_sym("unexpected", sym);
  }
 } while (YY_IN_SET(sym, (YY_CONST,YY___CONST,YY___CONST__,YY_RESTRICT,YY___RESTRICT,YY___RESTRICT__,YY_VOLATILE,YY___VOLATILE,YY___VOLATILE__,YY__ATOMIC,YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\376\007\000\000\360\017\000\000\000\000\000"));
 return sym;
}
