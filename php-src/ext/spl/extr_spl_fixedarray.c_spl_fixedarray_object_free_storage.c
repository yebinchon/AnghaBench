
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object ;
typedef size_t zend_long ;
struct TYPE_4__ {scalar_t__ size; int * elements; } ;
struct TYPE_5__ {int std; TYPE_1__ array; } ;
typedef TYPE_2__ spl_fixedarray_object ;


 int efree (int *) ;
 TYPE_2__* spl_fixed_array_from_obj (int *) ;
 int zend_object_std_dtor (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_fixedarray_object_free_storage(zend_object *object)
{
 spl_fixedarray_object *intern = spl_fixed_array_from_obj(object);
 zend_long i;

 if (intern->array.size > 0) {
  for (i = 0; i < intern->array.size; i++) {
   zval_ptr_dtor(&(intern->array.elements[i]));
  }

  if (intern->array.size > 0 && intern->array.elements) {
   efree(intern->array.elements);
  }
 }

 zend_object_std_dtor(&intern->std);
}
