
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ spl_ptr_llist_element ;
typedef int spl_ptr_llist ;


 int SPL_DLLIST_IT_DELETE ;
 int SPL_DLLIST_IT_LIFO ;
 int SPL_LLIST_CHECK_ADDREF (TYPE_1__*) ;
 int SPL_LLIST_DELREF (TYPE_1__*) ;
 int spl_ptr_llist_pop (int *,int *) ;
 int spl_ptr_llist_shift (int *,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_dllist_it_helper_move_forward(spl_ptr_llist_element **traverse_pointer_ptr, int *traverse_position_ptr, spl_ptr_llist *llist, int flags)
{
 if (*traverse_pointer_ptr) {
  spl_ptr_llist_element *old = *traverse_pointer_ptr;

  if (flags & SPL_DLLIST_IT_LIFO) {
   *traverse_pointer_ptr = old->prev;
   (*traverse_position_ptr)--;

   if (flags & SPL_DLLIST_IT_DELETE) {
    zval prev;
    spl_ptr_llist_pop(llist, &prev);

    zval_ptr_dtor(&prev);
   }
  } else {
   *traverse_pointer_ptr = old->next;

   if (flags & SPL_DLLIST_IT_DELETE) {
    zval prev;
    spl_ptr_llist_shift(llist, &prev);

    zval_ptr_dtor(&prev);
   } else {
    (*traverse_position_ptr)++;
   }
  }

  SPL_LLIST_DELREF(old);
  SPL_LLIST_CHECK_ADDREF(*traverse_pointer_ptr);
 }
}
