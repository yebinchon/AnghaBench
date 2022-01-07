
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int flags; int * child; } ;
typedef TYPE_1__ phpdbg_watch_element ;
typedef int Bucket ;


 int PHPDBG_WATCH_RECURSIVE ;
 int PHPDBG_WATCH_RECURSIVE_ROOT ;
 int SUCCESS ;
 int phpdbg_add_bucket_watch_element (int *,TYPE_1__*) ;

__attribute__((used)) static int phpdbg_create_recursive_watchpoint(zval *zv, phpdbg_watch_element *element) {
 element->flags = PHPDBG_WATCH_RECURSIVE | PHPDBG_WATCH_RECURSIVE_ROOT;
 element->child = ((void*)0);
 phpdbg_add_bucket_watch_element((Bucket *) zv, element);
 return SUCCESS;
}
