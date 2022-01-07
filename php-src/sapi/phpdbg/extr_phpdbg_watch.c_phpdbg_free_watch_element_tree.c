
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* child; struct TYPE_5__* parent; } ;
typedef TYPE_1__ phpdbg_watch_element ;


 int phpdbg_clean_watch_element (TYPE_1__*) ;
 int phpdbg_free_watch_element (TYPE_1__*) ;

void phpdbg_free_watch_element_tree(phpdbg_watch_element *element) {
 phpdbg_watch_element *parent = element->parent, *child = element->child;
 while (parent) {
  phpdbg_watch_element *cur = parent;
  parent = parent->parent;
  phpdbg_clean_watch_element(cur);
  phpdbg_free_watch_element(cur);
 }
 while (child) {
  phpdbg_watch_element *cur = child;
  child = child->child;
  phpdbg_free_watch_element(cur);
 }
 phpdbg_free_watch_element(element);
}
