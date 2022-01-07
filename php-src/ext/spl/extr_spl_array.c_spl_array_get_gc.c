
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
struct TYPE_3__ {int array; } ;
typedef TYPE_1__ spl_array_object ;
typedef int HashTable ;


 TYPE_1__* spl_array_from_obj (int *) ;
 int * zend_std_get_properties (int *) ;

__attribute__((used)) static HashTable *spl_array_get_gc(zend_object *obj, zval **gc_data, int *gc_data_count)
{
 spl_array_object *intern = spl_array_from_obj(obj);
 *gc_data = &intern->array;
 *gc_data_count = 1;
 return zend_std_get_properties(obj);
}
