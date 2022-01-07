
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
typedef int zend_bool ;
struct TYPE_5__ {int ce; } ;
struct TYPE_6__ {scalar_t__ fptr_offset_has; TYPE_1__ std; } ;
typedef TYPE_2__ spl_fixedarray_object ;


 int SEPARATE_ARG_IF_REF (int *) ;
 TYPE_2__* spl_fixed_array_from_obj (int *) ;
 int spl_fixedarray_object_has_dimension_helper (TYPE_2__*,int *,int) ;
 int zend_call_method_with_1_params (int *,int ,scalar_t__*,char*,int *,int *) ;
 int zend_is_true (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int spl_fixedarray_object_has_dimension(zend_object *object, zval *offset, int check_empty)
{
 spl_fixedarray_object *intern;

 intern = spl_fixed_array_from_obj(object);

 if (intern->fptr_offset_has) {
  zval rv;
  zend_bool result;

  SEPARATE_ARG_IF_REF(offset);
  zend_call_method_with_1_params(object, intern->std.ce, &intern->fptr_offset_has, "offsetExists", &rv, offset);
  zval_ptr_dtor(offset);
  result = zend_is_true(&rv);
  zval_ptr_dtor(&rv);
  return result;
 }

 return spl_fixedarray_object_has_dimension_helper(intern, offset, check_empty);
}
