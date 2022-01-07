
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
struct TYPE_9__ {scalar_t__ kind; int size; } ;
typedef TYPE_2__ zend_ffi_type ;
struct TYPE_10__ {TYPE_1__ std; int flags; int ptr; TYPE_2__* type; } ;
typedef TYPE_3__ zend_ffi_cdata ;


 int ZEND_FFI_FLAG_OWNED ;
 TYPE_2__* ZEND_FFI_TYPE (TYPE_2__*) ;
 scalar_t__ ZEND_FFI_TYPE_POINTER ;
 int emalloc (int ) ;
 int memcpy (int ,int ,int ) ;
 int zend_ffi_cdata_ce ;
 scalar_t__ zend_ffi_cdata_new (int ) ;
 int zend_ffi_cdata_value_handlers ;

__attribute__((used)) static zend_object *zend_ffi_cdata_clone_obj(zend_object *obj)
{
 zend_ffi_cdata *old_cdata = (zend_ffi_cdata*)obj;
 zend_ffi_type *type = ZEND_FFI_TYPE(old_cdata->type);
 zend_ffi_cdata *new_cdata;

 new_cdata = (zend_ffi_cdata*)zend_ffi_cdata_new(zend_ffi_cdata_ce);
 if (type->kind < ZEND_FFI_TYPE_POINTER) {
  new_cdata->std.handlers = &zend_ffi_cdata_value_handlers;
 }
 new_cdata->type = type;
 new_cdata->ptr = emalloc(type->size);
 memcpy(new_cdata->ptr, old_cdata->ptr, type->size);
 new_cdata->flags |= ZEND_FFI_FLAG_OWNED;

 return &new_cdata->std;
}
