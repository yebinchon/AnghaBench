
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int data; struct TYPE_6__* next; int * prev; } ;
typedef TYPE_1__ spl_ptr_llist_element ;
struct TYPE_7__ {int (* dtor ) (TYPE_1__*) ;int count; TYPE_1__* head; int * tail; } ;
typedef TYPE_2__ spl_ptr_llist ;


 int SPL_LLIST_DELREF (TYPE_1__*) ;
 int ZVAL_COPY (int *,int *) ;
 int ZVAL_UNDEF (int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void spl_ptr_llist_shift(spl_ptr_llist *llist, zval *ret)
{
 spl_ptr_llist_element *head = llist->head;

 if (head == ((void*)0)) {
  ZVAL_UNDEF(ret);
  return;
 }

 if (head->next) {
  head->next->prev = ((void*)0);
 } else {
  llist->tail = ((void*)0);
 }

 llist->head = head->next;
 llist->count--;
 ZVAL_COPY(ret, &head->data);

 if (llist->dtor) {
  llist->dtor(head);
 }
 ZVAL_UNDEF(&head->data);

 SPL_LLIST_DELREF(head);
}
