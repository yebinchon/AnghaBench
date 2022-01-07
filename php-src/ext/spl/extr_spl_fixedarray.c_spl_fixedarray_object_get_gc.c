
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
struct TYPE_4__ {scalar_t__ size; int * elements; } ;
struct TYPE_5__ {TYPE_1__ array; } ;
typedef TYPE_2__ spl_fixedarray_object ;
typedef int HashTable ;


 TYPE_2__* spl_fixed_array_from_obj (int *) ;
 int * zend_std_get_properties (int *) ;

__attribute__((used)) static HashTable* spl_fixedarray_object_get_gc(zend_object *obj, zval **table, int *n)
{
 spl_fixedarray_object *intern = spl_fixed_array_from_obj(obj);
 HashTable *ht = zend_std_get_properties(obj);

 *table = intern->array.elements;
 *n = (int)intern->array.size;

 return ht;
}
