
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int rc; struct TYPE_6__* next; int data; struct TYPE_6__* prev; } ;
typedef TYPE_1__ spl_ptr_llist_element ;
struct TYPE_7__ {int (* ctor ) (TYPE_1__*) ;int count; TYPE_1__* tail; TYPE_1__* head; } ;
typedef TYPE_2__ spl_ptr_llist ;


 int ZVAL_COPY_VALUE (int *,int *) ;
 TYPE_1__* emalloc (int) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void spl_ptr_llist_push(spl_ptr_llist *llist, zval *data)
{
 spl_ptr_llist_element *elem = emalloc(sizeof(spl_ptr_llist_element));

 elem->rc = 1;
 elem->prev = llist->tail;
 elem->next = ((void*)0);
 ZVAL_COPY_VALUE(&elem->data, data);

 if (llist->tail) {
  llist->tail->next = elem;
 } else {
  llist->head = elem;
 }

 llist->tail = elem;
 llist->count++;

 if (llist->ctor) {
  llist->ctor(elem);
 }
}
