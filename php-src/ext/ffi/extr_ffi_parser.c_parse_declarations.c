
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;
typedef int zend_ffi_dcl ;


 int YY_AUTO ;
 int YY_CHAR ;
 int YY_COMPLEX ;
 int YY_CONST ;
 int YY_DOUBLE ;
 int YY_ENUM ;
 int YY_EXTERN ;
 int YY_FLOAT ;
 int YY_ID ;
 int YY_INLINE ;
 int YY_INT ;
 scalar_t__ YY_IN_SET (int,int,char*) ;
 int YY_LONG ;
 int YY_REGISTER ;
 int YY_RESTRICT ;
 int YY_SHORT ;
 int YY_SIGNED ;
 int YY_STATIC ;
 int YY_STRING ;
 int YY_STRUCT ;
 int YY_TYPEDEF ;
 int YY_UNION ;
 int YY_UNSIGNED ;
 int YY_VOID ;
 int YY_VOLATILE ;
 int YY__ALIGNAS ;
 int YY__ATOMIC ;
 int YY__BOOL ;
 int YY__COMMA ;
 int YY__COMPLEX ;
 int YY__EQUAL ;
 int YY__LPAREN ;
 int YY__NORETURN ;
 int YY__RPAREN ;
 int YY__SEMICOLON ;
 int YY__STAR ;
 int YY___ASM__ ;
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
 int YY___INLINE ;
 int YY___INLINE__ ;
 int YY___RESTRICT ;
 int YY___RESTRICT__ ;
 int YY___STDCALL ;
 int YY___THISCALL ;
 int YY___VECTORCALL ;
 int YY___VOLATILE ;
 int YY___VOLATILE__ ;
 int ZEND_FFI_ATTR_INIT ;
 int get_sym () ;
 int parse_STRING (int,int *) ;
 int parse_attributes (int,int *) ;
 int parse_declaration_specifiers (int,int *) ;
 int parse_declarator (int,int *,char const**,size_t*) ;
 int parse_initializer (int) ;
 int yy_error_sym (char*,int) ;
 int zend_ffi_declare (char const*,size_t,int *) ;

__attribute__((used)) static int parse_declarations(int sym) {
 while (YY_IN_SET(sym, (YY___EXTENSION__,YY_TYPEDEF,YY_EXTERN,YY_STATIC,YY_AUTO,YY_REGISTER,YY_INLINE,YY___INLINE,YY___INLINE__,YY__NORETURN,YY__ALIGNAS,YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL,YY_CONST,YY___CONST,YY___CONST__,YY_RESTRICT,YY___RESTRICT,YY___RESTRICT__,YY_VOLATILE,YY___VOLATILE,YY___VOLATILE__,YY__ATOMIC,YY_VOID,YY_CHAR,YY_SHORT,YY_INT,YY_LONG,YY_FLOAT,YY_DOUBLE,YY_SIGNED,YY_UNSIGNED,YY__BOOL,YY__COMPLEX,YY_COMPLEX,YY___COMPLEX,YY___COMPLEX__,YY_STRUCT,YY_UNION,YY_ENUM,YY_ID), "\202\377\377\377\377\107\360\017\000\000\000\002\000")) {
  zend_ffi_dcl common_dcl = ZEND_FFI_ATTR_INIT;
  if (sym == YY___EXTENSION__) {
   sym = get_sym();
  }
  sym = parse_declaration_specifiers(sym, &common_dcl);
  if (sym == YY__STAR || sym == YY_ID || sym == YY__LPAREN) {
   const char *name;
   size_t name_len;
   zend_ffi_dcl dcl;
   dcl = common_dcl;
   sym = parse_declarator(sym, &dcl, &name, &name_len);
   if (sym == YY___ASM__) {
    zend_ffi_val asm_str;
    sym = get_sym();
    if (sym != YY__LPAREN) {
     yy_error_sym("'(' expected, got", sym);
    }
    sym = get_sym();
    do {
     sym = parse_STRING(sym, &asm_str);
    } while (sym == YY_STRING);
    if (sym != YY__RPAREN) {
     yy_error_sym("')' expected, got", sym);
    }
    sym = get_sym();
   }
   if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
    sym = parse_attributes(sym, &dcl);
   }
   if (sym == YY__EQUAL) {
    sym = parse_initializer(sym);
   }
   zend_ffi_declare(name, name_len, &dcl);
   while (sym == YY__COMMA) {
    sym = get_sym();
    dcl = common_dcl;
    sym = parse_declarator(sym, &dcl, &name, &name_len);
    if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
     sym = parse_attributes(sym, &dcl);
    }
    if (sym == YY__EQUAL) {
     sym = parse_initializer(sym);
    }
    zend_ffi_declare(name, name_len, &dcl);
   }
  }
  if (sym != YY__SEMICOLON) {
   yy_error_sym("';' expected, got", sym);
  }
  sym = get_sym();
 }
 return sym;
}
