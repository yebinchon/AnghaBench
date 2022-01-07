
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
struct TYPE_6__ {struct TYPE_6__* next; int data; } ;
typedef TYPE_2__ spl_ptr_llist_element ;
struct TYPE_7__ {scalar_t__ gc_data_count; int * gc_data; TYPE_1__* llist; } ;
typedef TYPE_3__ spl_dllist_object ;
struct TYPE_5__ {scalar_t__ count; TYPE_2__* head; } ;
typedef int HashTable ;


 int ZVAL_COPY_VALUE (int *,int *) ;
 int * safe_erealloc (int *,scalar_t__,int,int ) ;
 TYPE_3__* spl_dllist_from_obj (int *) ;
 int * zend_std_get_properties (int *) ;

__attribute__((used)) static HashTable *spl_dllist_object_get_gc(zend_object *obj, zval **gc_data, int *gc_data_count)
{
 spl_dllist_object *intern = spl_dllist_from_obj(obj);
 spl_ptr_llist_element *current = intern->llist->head;
 int i = 0;

 if (intern->gc_data_count < intern->llist->count) {
  intern->gc_data_count = intern->llist->count;
  intern->gc_data = safe_erealloc(intern->gc_data, intern->gc_data_count, sizeof(zval), 0);
 }

 while (current) {
  ZVAL_COPY_VALUE(&intern->gc_data[i++], &current->data);
  current = current->next;
 }

 *gc_data = intern->gc_data;
 *gc_data_count = i;
 return zend_std_get_properties(obj);
}
