
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spl_ptr_llist_element ;
struct TYPE_3__ {int count; int * head; int * tail; } ;
typedef TYPE_1__ spl_ptr_llist ;


 int SPL_DLLIST_IT_LIFO ;
 int SPL_LLIST_CHECK_ADDREF (int *) ;
 int SPL_LLIST_CHECK_DELREF (int *) ;

__attribute__((used)) static void spl_dllist_it_helper_rewind(spl_ptr_llist_element **traverse_pointer_ptr, int *traverse_position_ptr, spl_ptr_llist *llist, int flags)
{
 SPL_LLIST_CHECK_DELREF(*traverse_pointer_ptr);

 if (flags & SPL_DLLIST_IT_LIFO) {
  *traverse_position_ptr = llist->count-1;
  *traverse_pointer_ptr = llist->tail;
 } else {
  *traverse_position_ptr = 0;
  *traverse_pointer_ptr = llist->head;
 }

 SPL_LLIST_CHECK_ADDREF(*traverse_pointer_ptr);
}
