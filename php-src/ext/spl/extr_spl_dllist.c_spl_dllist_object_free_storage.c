
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
struct TYPE_5__ {int traverse_pointer; TYPE_2__* llist; int * gc_data; int std; } ;
typedef TYPE_1__ spl_dllist_object ;
struct TYPE_6__ {scalar_t__ count; } ;


 int SPL_LLIST_CHECK_DELREF (int ) ;
 int efree (int *) ;
 TYPE_1__* spl_dllist_from_obj (int *) ;
 int spl_ptr_llist_destroy (TYPE_2__*) ;
 int spl_ptr_llist_pop (TYPE_2__*,int *) ;
 int zend_object_std_dtor (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_dllist_object_free_storage(zend_object *object)
{
 spl_dllist_object *intern = spl_dllist_from_obj(object);
 zval tmp;

 zend_object_std_dtor(&intern->std);

 while (intern->llist->count > 0) {
  spl_ptr_llist_pop(intern->llist, &tmp);
  zval_ptr_dtor(&tmp);
 }

 if (intern->gc_data != ((void*)0)) {
  efree(intern->gc_data);
 };

 spl_ptr_llist_destroy(intern->llist);
 SPL_LLIST_CHECK_DELREF(intern->traverse_pointer);
}
