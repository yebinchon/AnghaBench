
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct TYPE_7__ {TYPE_4__* heap; } ;
typedef TYPE_2__ spl_heap_object ;
struct TYPE_8__ {int flags; scalar_t__ count; } ;


 int SPL_HEAP_CORRUPTED ;
 TYPE_2__* Z_SPLHEAP_P (int *) ;
 int spl_ce_RuntimeException ;
 int * spl_heap_elem (TYPE_4__*,int ) ;
 int zend_throw_exception (int ,char*,int ) ;

__attribute__((used)) static zval *spl_heap_it_get_current_data(zend_object_iterator *iter)
{
 spl_heap_object *object = Z_SPLHEAP_P(&iter->data);

 if (object->heap->flags & SPL_HEAP_CORRUPTED) {
  zend_throw_exception(spl_ce_RuntimeException, "Heap is corrupted, heap properties are no longer ensured.", 0);
  return ((void*)0);
 }

 if (object->heap->count == 0) {
  return ((void*)0);
 } else {
  return spl_heap_elem(object->heap, 0);
 }
}
