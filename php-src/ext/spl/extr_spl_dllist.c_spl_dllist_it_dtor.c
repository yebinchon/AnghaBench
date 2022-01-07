
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_4__ {int data; } ;
struct TYPE_5__ {TYPE_1__ it; } ;
struct TYPE_6__ {TYPE_2__ intern; int traverse_pointer; } ;
typedef TYPE_3__ spl_dllist_it ;


 int SPL_LLIST_CHECK_DELREF (int ) ;
 int zend_user_it_invalidate_current (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_dllist_it_dtor(zend_object_iterator *iter)
{
 spl_dllist_it *iterator = (spl_dllist_it *)iter;

 SPL_LLIST_CHECK_DELREF(iterator->traverse_pointer);

 zend_user_it_invalidate_current(iter);
 zval_ptr_dtor(&iterator->intern.it.data);
}
