
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int phpdbg_watchpoint_t ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ phpdbg_watch_element ;
typedef int HashTable ;


 int * HT_FROM_ZVP (int *) ;
 scalar_t__ IS_ARRAY ;
 int PHPDBG_WATCH_ARRAY ;
 int PHPDBG_WATCH_OBJECT ;
 scalar_t__ Z_TYPE_P (int *) ;
 TYPE_1__* phpdbg_add_watch_element (int *,TYPE_1__*) ;
 int phpdbg_set_ht_watchpoint (int *,int *) ;

phpdbg_watch_element *phpdbg_add_ht_watch_element(zval *zv, phpdbg_watch_element *element) {
 phpdbg_watchpoint_t watch;
 HashTable *ht = HT_FROM_ZVP(zv);

 if (!ht) {
  return ((void*)0);
 }

 element->flags |= Z_TYPE_P(zv) == IS_ARRAY ? PHPDBG_WATCH_ARRAY : PHPDBG_WATCH_OBJECT;
 phpdbg_set_ht_watchpoint(ht, &watch);
 return phpdbg_add_watch_element(&watch, element);
}
