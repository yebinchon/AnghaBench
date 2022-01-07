
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int heap; int std; } ;
typedef TYPE_1__ spl_heap_object ;


 TYPE_1__* spl_heap_from_obj (int *) ;
 int spl_ptr_heap_destroy (int ) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void spl_heap_object_free_storage(zend_object *object)
{
 spl_heap_object *intern = spl_heap_from_obj(object);

 zend_object_std_dtor(&intern->std);

 spl_ptr_heap_destroy(intern->heap);
}
