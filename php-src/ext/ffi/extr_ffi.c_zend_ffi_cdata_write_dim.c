
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_ulong ;
typedef int zend_object ;
typedef int zend_long ;
struct TYPE_8__ {int type; } ;
struct TYPE_7__ {scalar_t__ length; int type; } ;
struct TYPE_9__ {scalar_t__ kind; int attr; int size; TYPE_2__ pointer; TYPE_1__ array; } ;
typedef TYPE_3__ zend_ffi_type ;
typedef int zend_ffi_flags ;
struct TYPE_10__ {int flags; scalar_t__ ptr; int type; } ;
typedef TYPE_4__ zend_ffi_cdata ;


 scalar_t__ EXPECTED (int) ;
 scalar_t__ UNEXPECTED (int) ;
 int ZEND_FFI_ATTR_CONST ;
 int ZEND_FFI_FLAG_CONST ;
 TYPE_3__* ZEND_FFI_TYPE (int ) ;
 scalar_t__ ZEND_FFI_TYPE_ARRAY ;
 scalar_t__ ZEND_FFI_TYPE_POINTER ;
 int zend_ffi_exception_ce ;
 int zend_ffi_zval_to_cdata (void*,TYPE_3__*,int *) ;
 int zend_throw_error (int ,char*) ;
 int zval_get_long (int *) ;

__attribute__((used)) static void zend_ffi_cdata_write_dim(zend_object *obj, zval *offset, zval *value)
{
 zend_ffi_cdata *cdata = (zend_ffi_cdata*)obj;
 zend_ffi_type *type = ZEND_FFI_TYPE(cdata->type);
 zend_long dim;
 void *ptr;
 zend_ffi_flags is_const;

 if (offset == ((void*)0)) {
  zend_throw_error(zend_ffi_exception_ce, "Cannot add next element to object of type FFI\\CData");
  return;
 }

 dim = zval_get_long(offset);
 if (EXPECTED(type->kind == ZEND_FFI_TYPE_ARRAY)) {
  if (UNEXPECTED((zend_ulong)(dim) >= (zend_ulong)type->array.length)
   && (UNEXPECTED(dim < 0) || UNEXPECTED(type->array.length != 0))) {
   zend_throw_error(zend_ffi_exception_ce, "C array index out of bounds");
   return;
  }

  is_const = (cdata->flags & ZEND_FFI_FLAG_CONST) | (zend_ffi_flags)(type->attr & ZEND_FFI_ATTR_CONST);
  type = ZEND_FFI_TYPE(type->array.type);






  ptr = (void*)(((char*)cdata->ptr) + type->size * dim);
 } else if (EXPECTED(type->kind == ZEND_FFI_TYPE_POINTER)) {
  is_const = (cdata->flags & ZEND_FFI_FLAG_CONST) | (zend_ffi_flags)(type->attr & ZEND_FFI_ATTR_CONST);
  type = ZEND_FFI_TYPE(type->pointer.type);
  if (UNEXPECTED(!cdata->ptr)) {
   zend_throw_error(zend_ffi_exception_ce, "NULL pointer dereference");
   return;
  }
  ptr = (void*)((*(char**)cdata->ptr) + type->size * dim);
 } else {
  zend_throw_error(zend_ffi_exception_ce, "Attempt to assign element of non C array");
  return;
 }

 if (UNEXPECTED(is_const)) {
  zend_throw_error(zend_ffi_exception_ce, "Attempt to assign read-only location");
  return;
 }

 zend_ffi_zval_to_cdata(ptr, type, value);
}
