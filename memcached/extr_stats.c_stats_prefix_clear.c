
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* prefix; struct TYPE_4__* next; } ;
typedef TYPE_1__ PREFIX_STATS ;


 int PREFIX_HASH_SIZE ;
 int free (TYPE_1__*) ;
 scalar_t__ num_prefixes ;
 TYPE_1__** prefix_stats ;
 scalar_t__ total_prefix_size ;

void stats_prefix_clear() {
    int i;

    for (i = 0; i < PREFIX_HASH_SIZE; i++) {
        PREFIX_STATS *cur, *next;
        for (cur = prefix_stats[i]; cur != ((void*)0); cur = next) {
            next = cur->next;
            free(cur->prefix);
            free(cur);
        }
        prefix_stats[i] = ((void*)0);
    }
    num_prefixes = 0;
    total_prefix_size = 0;
}
