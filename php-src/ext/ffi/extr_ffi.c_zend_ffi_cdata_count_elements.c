
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_object ;
typedef int zend_long ;
struct TYPE_5__ {int length; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_1__ array; } ;
typedef TYPE_2__ zend_ffi_type ;
struct TYPE_7__ {int type; } ;
typedef TYPE_3__ zend_ffi_cdata ;


 int FAILURE ;
 int SUCCESS ;
 TYPE_2__* ZEND_FFI_TYPE (int ) ;
 scalar_t__ ZEND_FFI_TYPE_ARRAY ;
 int zend_ffi_exception_ce ;
 int zend_throw_error (int ,char*) ;

__attribute__((used)) static int zend_ffi_cdata_count_elements(zend_object *obj, zend_long *count)
{
 zend_ffi_cdata *cdata = (zend_ffi_cdata*)obj;
 zend_ffi_type *type = ZEND_FFI_TYPE(cdata->type);

 if (type->kind != ZEND_FFI_TYPE_ARRAY) {
  zend_throw_error(zend_ffi_exception_ce, "Attempt to count() on non C array");
  return FAILURE;
 } else {
  *count = type->array.length;
  return SUCCESS;
 }
}
