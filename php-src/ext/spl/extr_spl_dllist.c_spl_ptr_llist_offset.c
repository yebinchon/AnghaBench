
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ spl_ptr_llist_element ;
struct TYPE_6__ {TYPE_1__* head; TYPE_1__* tail; } ;
typedef TYPE_2__ spl_ptr_llist ;



__attribute__((used)) static spl_ptr_llist_element *spl_ptr_llist_offset(spl_ptr_llist *llist, zend_long offset, int backward)
{

 spl_ptr_llist_element *current;
 int pos = 0;

 if (backward) {
  current = llist->tail;
 } else {
  current = llist->head;
 }

 while (current && pos < offset) {
  pos++;
  if (backward) {
   current = current->prev;
  } else {
   current = current->next;
  }
 }

 return current;
}
