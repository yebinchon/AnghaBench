
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {int it_flags; int time; } ;
typedef TYPE_2__ item ;
struct TYPE_12__ {TYPE_1__* thread; } ;
typedef TYPE_3__ conn ;
struct TYPE_13__ {scalar_t__ lru_segmented; } ;
struct TYPE_10__ {int lru_bump_buf; } ;


 scalar_t__ COLD_LRU ;
 int ITEM_ACTIVE ;
 int ITEM_FETCHED ;
 scalar_t__ ITEM_lruid (TYPE_2__*) ;
 int current_time ;
 int do_item_update (TYPE_2__*) ;
 int lru_bump_async (int ,TYPE_2__*,int const) ;
 TYPE_4__ settings ;

void do_item_bump(conn *c, item *it, const uint32_t hv) {






    if (settings.lru_segmented) {
        if ((it->it_flags & ITEM_ACTIVE) == 0) {
            if ((it->it_flags & ITEM_FETCHED) == 0) {
                it->it_flags |= ITEM_FETCHED;
            } else {
                it->it_flags |= ITEM_ACTIVE;
                if (ITEM_lruid(it) != COLD_LRU) {
                    it->time = current_time;
                } else if (!lru_bump_async(c->thread->lru_bump_buf, it, hv)) {

                    it->it_flags &= ~ITEM_ACTIVE;
                }
            }
        }
    } else {
        it->it_flags |= ITEM_FETCHED;
        do_item_update(it);
    }
}
