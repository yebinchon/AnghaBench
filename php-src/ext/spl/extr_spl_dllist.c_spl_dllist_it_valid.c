
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object_iterator ;
typedef int spl_ptr_llist_element ;
struct TYPE_2__ {int * traverse_pointer; } ;
typedef TYPE_1__ spl_dllist_it ;


 int FAILURE ;
 int SUCCESS ;

__attribute__((used)) static int spl_dllist_it_valid(zend_object_iterator *iter)
{
 spl_dllist_it *iterator = (spl_dllist_it *)iter;
 spl_ptr_llist_element *element = iterator->traverse_pointer;

 return (element != ((void*)0) ? SUCCESS : FAILURE);
}
