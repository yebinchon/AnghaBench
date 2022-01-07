
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int it_flags; int nkey; int nbytes; } ;
typedef TYPE_1__ item ;
struct TYPE_10__ {int curr_items; int curr_bytes; } ;


 int ITEM_LINKED ;
 int ITEM_key (TYPE_1__*) ;
 scalar_t__ ITEM_ntotal (TYPE_1__*) ;
 int MEMCACHED_ITEM_UNLINK (int ,int ,int ) ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int assoc_delete (int ,int ,int const) ;
 int do_item_remove (TYPE_1__*) ;
 int do_item_unlink_q (TYPE_1__*) ;
 int item_stats_sizes_remove (TYPE_1__*) ;
 TYPE_2__ stats_state ;

void do_item_unlink_nolock(item *it, const uint32_t hv) {
    MEMCACHED_ITEM_UNLINK(ITEM_key(it), it->nkey, it->nbytes);
    if ((it->it_flags & ITEM_LINKED) != 0) {
        it->it_flags &= ~ITEM_LINKED;
        STATS_LOCK();
        stats_state.curr_bytes -= ITEM_ntotal(it);
        stats_state.curr_items -= 1;
        STATS_UNLOCK();
        item_stats_sizes_remove(it);
        assoc_delete(ITEM_key(it), it->nkey, hv);
        do_item_unlink_q(it);
        do_item_remove(it);
    }
}
