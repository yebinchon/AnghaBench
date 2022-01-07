
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attr; } ;
typedef TYPE_1__ zend_ffi_type ;


 int FAILURE ;
 int FFI_G (int ) ;
 int SUCCESS ;
 int ZEND_FFI_ATTR_VLA ;
 int allow_vla ;
 int line ;
 int zend_ffi_throw_parser_error (char*,int ) ;

__attribute__((used)) static int zend_ffi_validate_vla(zend_ffi_type *type)
{
 if (!FFI_G(allow_vla) && (type->attr & ZEND_FFI_ATTR_VLA)) {
  zend_ffi_throw_parser_error("'[*]' not allowed in other than function prototype scope at line %d", FFI_G(line));
  return FAILURE;
 }
 return SUCCESS;
}
