
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int flags; TYPE_2__* parent; int str; TYPE_1__* watch; struct TYPE_10__* child; } ;
typedef TYPE_3__ phpdbg_watch_element ;
struct TYPE_9__ {int flags; int * child; int child_container; } ;
struct TYPE_8__ {scalar_t__ type; } ;


 int PHPDBG_WATCH_ARRAY ;
 int PHPDBG_WATCH_IMPLICIT ;
 int PHPDBG_WATCH_OBJECT ;
 int PHPDBG_WATCH_RECURSIVE ;
 int PHPDBG_WATCH_RECURSIVE_ROOT ;
 int PHPDBG_WATCH_SIMPLE ;
 scalar_t__ WATCH_ON_BUCKET ;
 scalar_t__ WATCH_ON_ZVAL ;
 int ZEND_ASSERT (int) ;
 int phpdbg_free_watch_element (TYPE_3__*) ;
 int phpdbg_queue_element_for_recreation (TYPE_3__*) ;
 int phpdbg_remove_watch_element_recursively (TYPE_3__*) ;
 int zend_hash_del (int *,int ) ;

void phpdbg_update_watch_element_watch(phpdbg_watch_element *element) {
 if (element->flags & PHPDBG_WATCH_IMPLICIT) {
  phpdbg_watch_element *child = element->child;
  while (child->flags & PHPDBG_WATCH_IMPLICIT) {
   child = child->child;
  }

  ZEND_ASSERT(element->watch->type == WATCH_ON_ZVAL || element->watch->type == WATCH_ON_BUCKET);
  phpdbg_queue_element_for_recreation(element);
 } else if (element->flags & (PHPDBG_WATCH_RECURSIVE_ROOT | PHPDBG_WATCH_SIMPLE)) {
  phpdbg_queue_element_for_recreation(element);
 } else if (element->flags & PHPDBG_WATCH_RECURSIVE) {
  phpdbg_remove_watch_element_recursively(element);
  if (element->parent->flags & (PHPDBG_WATCH_OBJECT | PHPDBG_WATCH_ARRAY)) {
   zend_hash_del(&element->parent->child_container, element->str);
  } else {
   element->parent->child = ((void*)0);
  }
  phpdbg_free_watch_element(element);
 }
}
