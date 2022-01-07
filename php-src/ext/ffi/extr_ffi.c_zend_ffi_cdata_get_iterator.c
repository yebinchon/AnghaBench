
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
struct TYPE_9__ {int * funcs; int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct TYPE_10__ {scalar_t__ kind; } ;
typedef TYPE_2__ zend_ffi_type ;
struct TYPE_11__ {int by_ref; TYPE_1__ it; int value; scalar_t__ key; } ;
typedef TYPE_3__ zend_ffi_cdata_iterator ;
struct TYPE_12__ {int type; } ;
typedef TYPE_4__ zend_ffi_cdata ;
typedef int zend_class_entry ;


 TYPE_2__* ZEND_FFI_TYPE (int ) ;
 scalar_t__ ZEND_FFI_TYPE_ARRAY ;
 int ZVAL_OBJ (int *,scalar_t__) ;
 int ZVAL_UNDEF (int *) ;
 int Z_ADDREF_P (int *) ;
 scalar_t__ Z_OBJ_P (int *) ;
 TYPE_3__* emalloc (int) ;
 int zend_ffi_cdata_it_funcs ;
 int zend_ffi_exception_ce ;
 int zend_iterator_init (TYPE_1__*) ;
 int zend_throw_error (int ,char*) ;

__attribute__((used)) static zend_object_iterator *zend_ffi_cdata_get_iterator(zend_class_entry *ce, zval *object, int by_ref)
{
 zend_ffi_cdata *cdata = (zend_ffi_cdata*)Z_OBJ_P(object);
 zend_ffi_type *type = ZEND_FFI_TYPE(cdata->type);
 zend_ffi_cdata_iterator *iter;

 if (type->kind != ZEND_FFI_TYPE_ARRAY) {
  zend_throw_error(zend_ffi_exception_ce, "Attempt to iterate on non C array");
  return ((void*)0);
 }

 iter = emalloc(sizeof(zend_ffi_cdata_iterator));

 zend_iterator_init(&iter->it);

 Z_ADDREF_P(object);
 ZVAL_OBJ(&iter->it.data, Z_OBJ_P(object));
 iter->it.funcs = &zend_ffi_cdata_it_funcs;
 iter->key = 0;
 iter->by_ref = by_ref;
 ZVAL_UNDEF(&iter->value);

 return &iter->it;
}
