
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int data; struct TYPE_6__* prev; int * next; } ;
typedef TYPE_1__ spl_ptr_llist_element ;
struct TYPE_7__ {int (* dtor ) (TYPE_1__*) ;int count; TYPE_1__* tail; int * head; } ;
typedef TYPE_2__ spl_ptr_llist ;


 int SPL_LLIST_DELREF (TYPE_1__*) ;
 int ZVAL_COPY (int *,int *) ;
 int ZVAL_UNDEF (int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void spl_ptr_llist_pop(spl_ptr_llist *llist, zval *ret)
{
 spl_ptr_llist_element *tail = llist->tail;

 if (tail == ((void*)0)) {
  ZVAL_UNDEF(ret);
  return;
 }

 if (tail->prev) {
  tail->prev->next = ((void*)0);
 } else {
  llist->head = ((void*)0);
 }

 llist->tail = tail->prev;
 llist->count--;
 ZVAL_COPY(ret, &tail->data);

 if (llist->dtor) {
  llist->dtor(tail);
 }

 ZVAL_UNDEF(&tail->data);

 SPL_LLIST_DELREF(tail);
}
