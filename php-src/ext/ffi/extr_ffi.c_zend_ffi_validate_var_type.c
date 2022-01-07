
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ zend_ffi_type ;
typedef int zend_bool ;


 int FAILURE ;
 int FFI_G (int ) ;
 scalar_t__ ZEND_FFI_TYPE_FUNC ;
 int line ;
 int zend_ffi_throw_parser_error (char*,int ) ;
 int zend_ffi_validate_type (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int zend_ffi_validate_var_type(zend_ffi_type *type, zend_bool allow_incomplete_array)
{
 if (type->kind == ZEND_FFI_TYPE_FUNC) {
  zend_ffi_throw_parser_error("'function' type is not allowed at line %d", FFI_G(line));
  return FAILURE;
 }
 return zend_ffi_validate_type(type, 0, allow_incomplete_array);
}
