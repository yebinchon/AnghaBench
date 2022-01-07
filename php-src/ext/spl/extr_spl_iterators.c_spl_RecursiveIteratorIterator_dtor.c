
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object_iterator ;
typedef int zend_object ;
struct TYPE_4__ {size_t level; TYPE_3__* iterators; } ;
typedef TYPE_1__ spl_recursive_it_object ;
struct TYPE_5__ {int zobject; int * iterator; } ;


 int efree (TYPE_3__*) ;
 TYPE_1__* spl_recursive_it_from_obj (int *) ;
 int zend_iterator_dtor (int *) ;
 int zend_objects_destroy_object (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_RecursiveIteratorIterator_dtor(zend_object *_object)
{
 spl_recursive_it_object *object = spl_recursive_it_from_obj(_object);
 zend_object_iterator *sub_iter;


 zend_objects_destroy_object(_object);

 if (object->iterators) {
  while (object->level >= 0) {
   sub_iter = object->iterators[object->level].iterator;
   zend_iterator_dtor(sub_iter);
   zval_ptr_dtor(&object->iterators[object->level--].zobject);
  }
  efree(object->iterators);
  object->iterators = ((void*)0);
 }
}
