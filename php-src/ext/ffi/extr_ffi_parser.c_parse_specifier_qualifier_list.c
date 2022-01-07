
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_dcl ;


 int YY_CHAR ;
 int YY_COMPLEX ;
 int YY_CONST ;
 int YY_DOUBLE ;
 int YY_ENUM ;
 int YY_FLOAT ;
 int YY_ID ;
 int YY_INT ;
 scalar_t__ YY_IN_SET (int,int ,char*) ;
 int YY_LONG ;
 int YY_RESTRICT ;
 int YY_SHORT ;
 int YY_SIGNED ;
 int YY_STRUCT ;
 int YY_UNION ;
 int YY_UNSIGNED ;
 int YY_VOID ;
 int YY_VOLATILE ;
 int YY__ATOMIC ;
 int YY__BOOL ;
 int YY__COMPLEX ;
 int YY___ATTRIBUTE ;
 int YY___ATTRIBUTE__ ;
 int YY___CDECL ;
 int YY___COMPLEX ;
 int YY___COMPLEX__ ;
 int YY___CONST ;
 int YY___CONST__ ;
 int YY___DECLSPEC ;
 int YY___EXTENSION__ ;
 int YY___FASTCALL ;
 int YY___RESTRICT ;
 int YY___RESTRICT__ ;
 int YY___STDCALL ;
 int YY___THISCALL ;
 int YY___VECTORCALL ;
 int YY___VOLATILE ;
 int YY___VOLATILE__ ;
 int get_sym () ;
 int parse_attributes (int,int *) ;
 int parse_type_qualifier (int,int *) ;
 int parse_type_specifier (int,int *) ;
 int yy_error_sym (char*,int) ;
 scalar_t__ yy_pos ;
 scalar_t__ yy_text ;
 scalar_t__ zend_ffi_is_typedef_name (char const*,scalar_t__) ;

__attribute__((used)) static int parse_specifier_qualifier_list(int sym, zend_ffi_dcl *dcl) {
 if (sym == YY___EXTENSION__) {
  sym = get_sym();
 }
 do {
  if (YY_IN_SET(sym, (YY_VOID,YY_CHAR,YY_SHORT,YY_INT,YY_LONG,YY_FLOAT,YY_DOUBLE,YY_SIGNED,YY_UNSIGNED,YY__BOOL,YY__COMPLEX,YY_COMPLEX,YY___COMPLEX,YY___COMPLEX__,YY_STRUCT,YY_UNION,YY_ENUM,YY_ID), "\000\000\000\370\377\107\000\000\000\000\000\002\000")) {
   sym = parse_type_specifier(sym, dcl);
  } else if (YY_IN_SET(sym, (YY_CONST,YY___CONST,YY___CONST__,YY_RESTRICT,YY___RESTRICT,YY___RESTRICT__,YY_VOLATILE,YY___VOLATILE,YY___VOLATILE__,YY__ATOMIC), "\000\000\376\007\000\000\000\000\000\000\000\000\000")) {
   sym = parse_type_qualifier(sym, dcl);
  } else if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
   sym = parse_attributes(sym, dcl);
  } else {
   yy_error_sym("unexpected", sym);
  }
 } while ((YY_IN_SET(sym, (YY_VOID,YY_CHAR,YY_SHORT,YY_INT,YY_LONG,YY_FLOAT,YY_DOUBLE,YY_SIGNED,YY_UNSIGNED,YY__BOOL,YY__COMPLEX,YY_COMPLEX,YY___COMPLEX,YY___COMPLEX__,YY_STRUCT,YY_UNION,YY_ENUM,YY_ID,YY_CONST,YY___CONST,YY___CONST__,YY_RESTRICT,YY___RESTRICT,YY___RESTRICT__,YY_VOLATILE,YY___VOLATILE,YY___VOLATILE__,YY__ATOMIC,YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\376\377\377\107\360\017\000\000\000\002\000")) && (sym != YY_ID || zend_ffi_is_typedef_name((const char*)yy_text, yy_pos - yy_text)));
 return sym;
}
