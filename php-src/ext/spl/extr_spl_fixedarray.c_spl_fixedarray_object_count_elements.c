
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
typedef int zend_long ;
struct TYPE_5__ {int size; } ;
struct TYPE_6__ {int ce; } ;
struct TYPE_7__ {TYPE_1__ array; scalar_t__ fptr_count; TYPE_2__ std; } ;
typedef TYPE_3__ spl_fixedarray_object ;


 int SUCCESS ;
 int Z_ISUNDEF (int ) ;
 TYPE_3__* spl_fixed_array_from_obj (int *) ;
 int zend_call_method_with_0_params (int *,int ,scalar_t__*,char*,int *) ;
 int zval_get_long (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int spl_fixedarray_object_count_elements(zend_object *object, zend_long *count)
{
 spl_fixedarray_object *intern;

 intern = spl_fixed_array_from_obj(object);
 if (intern->fptr_count) {
  zval rv;
  zend_call_method_with_0_params(object, intern->std.ce, &intern->fptr_count, "count", &rv);
  if (!Z_ISUNDEF(rv)) {
   *count = zval_get_long(&rv);
   zval_ptr_dtor(&rv);
  } else {
   *count = 0;
  }
 } else {
  *count = intern->array.size;
 }
 return SUCCESS;
}
