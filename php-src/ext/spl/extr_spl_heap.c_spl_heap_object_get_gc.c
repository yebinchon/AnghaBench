
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
struct TYPE_5__ {TYPE_1__* heap; } ;
typedef TYPE_2__ spl_heap_object ;
struct TYPE_4__ {int count; scalar_t__ elements; } ;
typedef int HashTable ;


 TYPE_2__* spl_heap_from_obj (int *) ;
 int * zend_std_get_properties (int *) ;

__attribute__((used)) static HashTable *spl_heap_object_get_gc(zend_object *obj, zval **gc_data, int *gc_data_count)
{
 spl_heap_object *intern = spl_heap_from_obj(obj);
 *gc_data = (zval *) intern->heap->elements;
 *gc_data_count = intern->heap->count;

 return zend_std_get_properties(obj);
}
