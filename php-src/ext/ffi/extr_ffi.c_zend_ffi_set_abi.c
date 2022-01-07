
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ abi; } ;
typedef TYPE_1__ zend_ffi_dcl ;
typedef scalar_t__ uint16_t ;


 int FFI_G (int ) ;
 scalar_t__ ZEND_FFI_ABI_DEFAULT ;
 int line ;
 int zend_ffi_parser_error (char*,int ) ;

void zend_ffi_set_abi(zend_ffi_dcl *dcl, uint16_t abi)
{
 if (dcl->abi != ZEND_FFI_ABI_DEFAULT) {
  zend_ffi_parser_error("multiple calling convention specifiers at line %d", FFI_G(line));
 } else {
  dcl->abi = abi;
 }
}
