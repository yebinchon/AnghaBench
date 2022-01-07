
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int * postfix; int * prefix; int std; scalar_t__ level; int * iterators; } ;
typedef TYPE_1__ spl_recursive_it_object ;


 int efree (int *) ;
 int smart_str_free (int *) ;
 TYPE_1__* spl_recursive_it_from_obj (int *) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void spl_RecursiveIteratorIterator_free_storage(zend_object *_object)
{
 spl_recursive_it_object *object = spl_recursive_it_from_obj(_object);

 if (object->iterators) {
  efree(object->iterators);
  object->iterators = ((void*)0);
  object->level = 0;
 }

 zend_object_std_dtor(&object->std);
 smart_str_free(&object->prefix[0]);
 smart_str_free(&object->prefix[1]);
 smart_str_free(&object->prefix[2]);
 smart_str_free(&object->prefix[3]);
 smart_str_free(&object->prefix[4]);
 smart_str_free(&object->prefix[5]);

 smart_str_free(&object->postfix[0]);
}
