
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; struct TYPE_7__* child; } ;
typedef TYPE_1__ phpdbg_watch_element ;


 int PHPDBG_WATCH_RECURSIVE ;
 int PHPDBG_WATCH_RECURSIVE_ROOT ;
 int ZEND_ASSERT (int) ;
 int phpdbg_backup_watch_element (TYPE_1__*) ;
 int phpdbg_clean_watch_element (TYPE_1__*) ;
 int phpdbg_remove_watch_element_recursively (TYPE_1__*) ;

void phpdbg_dissociate_watch_element(phpdbg_watch_element *element, phpdbg_watch_element *until) {
 phpdbg_watch_element *child = element;
 ZEND_ASSERT((element->flags & (PHPDBG_WATCH_RECURSIVE_ROOT | PHPDBG_WATCH_RECURSIVE)) != PHPDBG_WATCH_RECURSIVE);

 if (element->flags & PHPDBG_WATCH_RECURSIVE_ROOT) {
  phpdbg_backup_watch_element(element);
  phpdbg_remove_watch_element_recursively(element);
  return;
 }

 while (child->child != until) {
  child = child->child;
  if (child->flags & PHPDBG_WATCH_RECURSIVE_ROOT) {
   phpdbg_backup_watch_element(child);
   phpdbg_remove_watch_element_recursively(child);
   child->child = ((void*)0);
   break;
  }
  if (child->child == ((void*)0) || (child->flags & PHPDBG_WATCH_RECURSIVE_ROOT)) {
   phpdbg_backup_watch_element(child);
  }
  phpdbg_clean_watch_element(child);
 }

 if (element->child == ((void*)0)) {
  phpdbg_backup_watch_element(element);
 }
 phpdbg_clean_watch_element(element);
}
