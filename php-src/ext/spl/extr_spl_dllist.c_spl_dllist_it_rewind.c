
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
typedef int spl_ptr_llist ;
struct TYPE_7__ {int flags; int * llist; } ;
typedef TYPE_2__ spl_dllist_object ;
struct TYPE_8__ {int traverse_position; int traverse_pointer; } ;
typedef TYPE_3__ spl_dllist_it ;


 TYPE_2__* Z_SPLDLLIST_P (int *) ;
 int spl_dllist_it_helper_rewind (int *,int *,int *,int ) ;

__attribute__((used)) static void spl_dllist_it_rewind(zend_object_iterator *iter)
{
 spl_dllist_it *iterator = (spl_dllist_it *)iter;
 spl_dllist_object *object = Z_SPLDLLIST_P(&iter->data);
 spl_ptr_llist *llist = object->llist;

 spl_dllist_it_helper_rewind(&iterator->traverse_pointer, &iterator->traverse_position, llist, object->flags);
}
