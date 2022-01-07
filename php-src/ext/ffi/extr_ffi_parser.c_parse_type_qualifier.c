
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int attr; } ;
typedef TYPE_1__ zend_ffi_dcl ;


 int YY_CONST ;
 int YY_RESTRICT ;
 int YY_VOLATILE ;
 int YY__ATOMIC ;
 int YY___CONST ;
 int YY___CONST__ ;
 int YY___RESTRICT ;
 int YY___RESTRICT__ ;
 int YY___VOLATILE ;
 int YY___VOLATILE__ ;
 int ZEND_FFI_ATTR_CONST ;
 int ZEND_FFI_DCL_ATOMIC ;
 int ZEND_FFI_DCL_CONST ;
 int ZEND_FFI_DCL_RESTRICT ;
 int ZEND_FFI_DCL_VOLATILE ;
 int get_sym () ;
 int yy_error_sym (char*,int) ;

__attribute__((used)) static int parse_type_qualifier(int sym, zend_ffi_dcl *dcl) {
 if (sym == YY_CONST || sym == YY___CONST || sym == YY___CONST__) {
  sym = get_sym();
  dcl->flags |= ZEND_FFI_DCL_CONST;
  dcl->attr |= ZEND_FFI_ATTR_CONST;
 } else if (sym == YY_RESTRICT || sym == YY___RESTRICT || sym == YY___RESTRICT__) {
  sym = get_sym();
  dcl->flags |= ZEND_FFI_DCL_RESTRICT;
 } else if (sym == YY_VOLATILE || sym == YY___VOLATILE || sym == YY___VOLATILE__) {
  sym = get_sym();
  dcl->flags |= ZEND_FFI_DCL_VOLATILE;
 } else if (sym == YY__ATOMIC) {
  sym = get_sym();
  dcl->flags |= ZEND_FFI_DCL_ATOMIC;
 } else {
  yy_error_sym("unexpected", sym);
 }
 return sym;
}
