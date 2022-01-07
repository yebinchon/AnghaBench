
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ zend_ffi_dcl ;


 int YY_ID ;
 scalar_t__ YY_IN_SET (int,int ,char*) ;
 int YY_STRUCT ;
 int YY_UNION ;
 int YY__LBRACE ;
 int YY___ATTRIBUTE ;
 int YY___ATTRIBUTE__ ;
 int YY___CDECL ;
 int YY___DECLSPEC ;
 int YY___FASTCALL ;
 int YY___STDCALL ;
 int YY___THISCALL ;
 int YY___VECTORCALL ;
 int ZEND_FFI_DCL_STRUCT ;
 int ZEND_FFI_DCL_UNION ;
 int get_sym () ;
 int parse_ID (int,char const**,size_t*) ;
 int parse_attributes (int,TYPE_1__*) ;
 int parse_struct_contents (int,TYPE_1__*) ;
 int yy_error_sym (char*,int) ;
 int zend_ffi_declare_tag (char const*,size_t,TYPE_1__*,int) ;
 int zend_ffi_make_struct_type (TYPE_1__*) ;

__attribute__((used)) static int parse_struct_or_union_specifier(int sym, zend_ffi_dcl *dcl) {
 if (sym == YY_STRUCT) {
  sym = get_sym();
  dcl->flags |= ZEND_FFI_DCL_STRUCT;
 } else if (sym == YY_UNION) {
  sym = get_sym();
  dcl->flags |= ZEND_FFI_DCL_UNION;
 } else {
  yy_error_sym("unexpected", sym);
 }
 if (YY_IN_SET(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
  sym = parse_attributes(sym, dcl);
 }
 if (sym == YY_ID) {
  const char *name;
  size_t name_len;
  sym = parse_ID(sym, &name, &name_len);
  zend_ffi_declare_tag(name, name_len, dcl, 1);
  if (sym == YY__LBRACE) {
   sym = parse_struct_contents(sym, dcl);
   zend_ffi_declare_tag(name, name_len, dcl, 0);
  }
 } else if (sym == YY__LBRACE) {
  zend_ffi_make_struct_type(dcl);
  sym = parse_struct_contents(sym, dcl);
 } else {
  yy_error_sym("unexpected", sym);
 }
 return sym;
}
