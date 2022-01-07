
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ zend_ffi_dcl ;


 int YY_AUTO ;
 int YY_CHAR ;
 int YY_COMPLEX ;
 int YY_CONST ;
 int YY_DOUBLE ;
 int YY_ENUM ;
 int YY_EOF ;
 int YY_EXTERN ;
 int YY_FLOAT ;
 int YY_ID ;
 int YY_INLINE ;
 int YY_INT ;
 scalar_t__ YY_IN_SET (int,int ,char*) ;
 int YY_LONG ;
 int YY_REGISTER ;
 int YY_RESTRICT ;
 int YY_SHORT ;
 int YY_SIGNED ;
 int YY_STATIC ;
 int YY_STRUCT ;
 int YY_TYPEDEF ;
 int YY_UNION ;
 int YY_UNSIGNED ;
 int YY_VOID ;
 int YY_VOLATILE ;
 int YY__ALIGNAS ;
 int YY__ATOMIC ;
 int YY__BOOL ;
 int YY__COLON ;
 int YY__COMMA ;
 int YY__COMPLEX ;
 int YY__LBRACE ;
 int YY__LBRACK ;
 int YY__LPAREN ;
 int YY__NORETURN ;
 int YY__RBRACE ;
 int YY__RPAREN ;
 int YY__SEMICOLON ;
 int YY__STAR ;
 int YY___ATTRIBUTE ;
 int YY___ATTRIBUTE__ ;
 int YY___CDECL ;
 int YY___COMPLEX ;
 int YY___COMPLEX__ ;
 int YY___CONST ;
 int YY___CONST__ ;
 int YY___DECLSPEC ;
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
 int ZEND_FFI_DCL_ENUM ;
 int get_sym () ;
 int parse_ID (int,char const**,size_t*) ;
 int parse_attributes (int,TYPE_1__*) ;
 int parse_enumerator_list (int,TYPE_1__*) ;
 int yy_error_sym (char*,int) ;
 int zend_ffi_declare_tag (char const*,size_t,TYPE_1__*,int) ;
 int zend_ffi_make_enum_type (TYPE_1__*) ;

__attribute__((used)) static int parse_enum_specifier(int sym, zend_ffi_dcl *dcl) {
 if (sym != YY_ENUM) {
  yy_error_sym("'enum' expected, got", sym);
 }
 sym = get_sym();
 dcl->flags |= ZEND_FFI_DCL_ENUM;
 if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
  sym = parse_attributes(sym, dcl);
 }
 if (sym == YY_ID) {
  const char *name;
  size_t name_len;
  sym = parse_ID(sym, &name, &name_len);
  if (sym == YY__LBRACE) {
   zend_ffi_declare_tag(name, name_len, dcl, 0);
   sym = get_sym();
   sym = parse_enumerator_list(sym, dcl);
   if (sym != YY__RBRACE) {
    yy_error_sym("'}' expected, got", sym);
   }
   sym = get_sym();
   if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
    sym = parse_attributes(sym, dcl);
   }
  } else if (YY_IN_SET(sym, (YY_TYPEDEF,YY_EXTERN,YY_STATIC,YY_AUTO,YY_REGISTER,YY_INLINE,YY___INLINE,YY___INLINE__,YY__NORETURN,YY__ALIGNAS,YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL,YY_CONST,YY___CONST,YY___CONST__,YY_RESTRICT,YY___RESTRICT,YY___RESTRICT__,YY_VOLATILE,YY___VOLATILE,YY___VOLATILE__,YY__ATOMIC,YY_VOID,YY_CHAR,YY_SHORT,YY_INT,YY_LONG,YY_FLOAT,YY_DOUBLE,YY_SIGNED,YY_UNSIGNED,YY__BOOL,YY__COMPLEX,YY_COMPLEX,YY___COMPLEX,YY___COMPLEX__,YY_STRUCT,YY_UNION,YY_ENUM,YY_ID,YY__STAR,YY__LPAREN,YY__SEMICOLON,YY__COLON,YY__LBRACK,YY__RBRACE,YY__COMMA,YY__RPAREN,YY_EOF), "\371\377\377\377\377\167\363\017\000\000\000\002\000")) {
   zend_ffi_declare_tag(name, name_len, dcl, 1);
  } else {
   yy_error_sym("unexpected", sym);
  }
 } else if (sym == YY__LBRACE) {
  sym = get_sym();
  zend_ffi_make_enum_type(dcl);
  sym = parse_enumerator_list(sym, dcl);
  if (sym != YY__RBRACE) {
   yy_error_sym("'}' expected, got", sym);
  }
  sym = get_sym();
  if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
   sym = parse_attributes(sym, dcl);
  }
 } else {
  yy_error_sym("unexpected", sym);
 }
 return sym;
}
