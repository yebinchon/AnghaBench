
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_bool ;
struct TYPE_7__ {int flags; struct TYPE_7__* parent; TYPE_2__* watch; } ;
typedef TYPE_3__ phpdbg_watch_element ;
struct TYPE_5__ {void* ptr; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;


 int PHPDBG_WATCH_RECURSIVE_ROOT ;

zend_bool phpdbg_is_recursively_watched(void *ptr, phpdbg_watch_element *element) {
 phpdbg_watch_element *next = element;
 do {
  element = next;
  if (element->watch->addr.ptr == ptr) {
   return 1;
  }
  next = element->parent;
 } while (!(element->flags & PHPDBG_WATCH_RECURSIVE_ROOT));

 return 0;
}
