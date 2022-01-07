
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
typedef int zend_long ;
struct TYPE_5__ {int ce; } ;
struct TYPE_6__ {scalar_t__ fptr_count; TYPE_1__ std; } ;
typedef TYPE_2__ spl_array_object ;


 int FAILURE ;
 scalar_t__ IS_UNDEF ;
 int SUCCESS ;
 scalar_t__ Z_TYPE (int ) ;
 TYPE_2__* spl_array_from_obj (int *) ;
 int spl_array_object_count_elements_helper (TYPE_2__*) ;
 int zend_call_method_with_0_params (int *,int ,scalar_t__*,char*,int *) ;
 int zval_get_long (int *) ;
 int zval_ptr_dtor (int *) ;

int spl_array_object_count_elements(zend_object *object, zend_long *count)
{
 spl_array_object *intern = spl_array_from_obj(object);

 if (intern->fptr_count) {
  zval rv;
  zend_call_method_with_0_params(object, intern->std.ce, &intern->fptr_count, "count", &rv);
  if (Z_TYPE(rv) != IS_UNDEF) {
   *count = zval_get_long(&rv);
   zval_ptr_dtor(&rv);
   return SUCCESS;
  }
  *count = 0;
  return FAILURE;
 }
 *count = spl_array_object_count_elements_helper(intern);
 return SUCCESS;
}
