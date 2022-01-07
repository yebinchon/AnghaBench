
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* watch; int str; } ;
typedef TYPE_1__ phpdbg_watch_element ;
struct TYPE_6__ {int elements; } ;
typedef int HashTable ;


 int phpdbg_remove_watchpoint (TYPE_3__*) ;
 int phpdbg_unwatch_parent_ht (TYPE_1__*) ;
 int zend_hash_del (int *,int ) ;
 scalar_t__ zend_hash_num_elements (int *) ;

void phpdbg_clean_watch_element(phpdbg_watch_element *element) {
 HashTable *elements = &element->watch->elements;
 phpdbg_unwatch_parent_ht(element);
 zend_hash_del(elements, element->str);
 if (zend_hash_num_elements(elements) == 0) {
  phpdbg_remove_watchpoint(element->watch);
 }
}
