
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ spl_ptr_llist_element ;
struct TYPE_4__ {TYPE_1__* traverse_pointer; } ;
typedef TYPE_2__ spl_dllist_it ;


 scalar_t__ Z_ISUNDEF (int ) ;

__attribute__((used)) static zval *spl_dllist_it_get_current_data(zend_object_iterator *iter)
{
 spl_dllist_it *iterator = (spl_dllist_it *)iter;
 spl_ptr_llist_element *element = iterator->traverse_pointer;

 if (element == ((void*)0) || Z_ISUNDEF(element->data)) {
  return ((void*)0);
 }

 return &element->data;
}
