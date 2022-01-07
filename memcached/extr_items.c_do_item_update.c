
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int it_flags; scalar_t__ time; int slabs_clsid; int nbytes; int nkey; } ;
typedef TYPE_1__ item ;
struct TYPE_11__ {scalar_t__ lru_segmented; } ;


 scalar_t__ COLD_LRU ;
 int ITEM_ACTIVE ;
 int ITEM_LINKED ;
 int ITEM_SLABBED ;
 scalar_t__ ITEM_UPDATE_INTERVAL ;
 int ITEM_clsid (TYPE_1__*) ;
 int ITEM_key (TYPE_1__*) ;
 scalar_t__ ITEM_lruid (TYPE_1__*) ;
 int MEMCACHED_ITEM_UPDATE (int ,int ,int ) ;
 int WARM_LRU ;
 int assert (int) ;
 scalar_t__ current_time ;
 int item_link_q (TYPE_1__*) ;
 int item_link_q_warm (TYPE_1__*) ;
 int item_unlink_q (TYPE_1__*) ;
 TYPE_2__ settings ;

void do_item_update(item *it) {
    MEMCACHED_ITEM_UPDATE(ITEM_key(it), it->nkey, it->nbytes);


    if (settings.lru_segmented) {
        assert((it->it_flags & ITEM_SLABBED) == 0);
        if ((it->it_flags & ITEM_LINKED) != 0) {
            if (ITEM_lruid(it) == COLD_LRU && (it->it_flags & ITEM_ACTIVE)) {
                it->time = current_time;
                item_unlink_q(it);
                it->slabs_clsid = ITEM_clsid(it);
                it->slabs_clsid |= WARM_LRU;
                it->it_flags &= ~ITEM_ACTIVE;
                item_link_q_warm(it);
            } else {
                it->time = current_time;
            }
        }
    } else if (it->time < current_time - ITEM_UPDATE_INTERVAL) {
        assert((it->it_flags & ITEM_SLABBED) == 0);

        if ((it->it_flags & ITEM_LINKED) != 0) {
            it->time = current_time;
            item_unlink_q(it);
            item_link_q(it);
        }
    }
}
