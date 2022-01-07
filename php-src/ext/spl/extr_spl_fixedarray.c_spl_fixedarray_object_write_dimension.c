
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
struct TYPE_5__ {int ce; } ;
struct TYPE_6__ {scalar_t__ fptr_offset_set; TYPE_1__ std; } ;
typedef TYPE_2__ spl_fixedarray_object ;


 int SEPARATE_ARG_IF_REF (int *) ;
 int ZVAL_NULL (int *) ;
 TYPE_2__* spl_fixed_array_from_obj (int *) ;
 int spl_fixedarray_object_write_dimension_helper (TYPE_2__*,int *,int *) ;
 int zend_call_method_with_2_params (int *,int ,scalar_t__*,char*,int *,int *,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_fixedarray_object_write_dimension(zend_object *object, zval *offset, zval *value)
{
 spl_fixedarray_object *intern;
 zval tmp;

 intern = spl_fixed_array_from_obj(object);

 if (intern->fptr_offset_set) {
  if (!offset) {
   ZVAL_NULL(&tmp);
   offset = &tmp;
  } else {
   SEPARATE_ARG_IF_REF(offset);
  }
  SEPARATE_ARG_IF_REF(value);
  zend_call_method_with_2_params(object, intern->std.ce, &intern->fptr_offset_set, "offsetSet", ((void*)0), offset, value);
  zval_ptr_dtor(value);
  zval_ptr_dtor(offset);
  return;
 }

 spl_fixedarray_object_write_dimension_helper(intern, offset, value);
}
