
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; struct TYPE_6__* next; } ;
typedef TYPE_1__ spl_ptr_llist_element ;
struct TYPE_7__ {TYPE_1__* head; } ;
typedef TYPE_2__ spl_ptr_llist ;


 int spl_ptr_llist_push (TYPE_2__*,int *) ;

__attribute__((used)) static void spl_ptr_llist_copy(spl_ptr_llist *from, spl_ptr_llist *to)
{
 spl_ptr_llist_element *current = from->head, *next;


 while (current) {
  next = current->next;







  spl_ptr_llist_push(to, &current->data);
  current = next;
 }

}
