
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ phpdbg_watchpoint_t ;
typedef int HashTable ;


 int HT_WATCH_OFFSET ;
 int WATCH_ON_HASHTABLE ;
 int phpdbg_set_addr_watchpoint (char*,int,TYPE_1__*) ;

void phpdbg_set_ht_watchpoint(HashTable *ht, phpdbg_watchpoint_t *watch) {
 phpdbg_set_addr_watchpoint(((char *) ht) + HT_WATCH_OFFSET, sizeof(HashTable) - HT_WATCH_OFFSET, watch);
 watch->type = WATCH_ON_HASHTABLE;
}
