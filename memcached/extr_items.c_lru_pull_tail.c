
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct lru_pull_tail_return {int hv; TYPE_1__* it; } ;
typedef scalar_t__ rel_time_t ;
struct TYPE_16__ {scalar_t__ nbytes; scalar_t__ nkey; int it_flags; scalar_t__ time; int refcount; scalar_t__ exptime; unsigned int slabs_clsid; struct TYPE_16__* prev; } ;
typedef TYPE_1__ item ;
struct TYPE_18__ {int moves_to_warm; int evicted_active; int evicted_unfetched; int evicted_nonzero; scalar_t__ evicted_time; int evicted; int moves_to_cold; int moves_within_lru; int expired_unfetched; int reclaimed; int tailrepairs; int lrutail_reflocked; } ;
struct TYPE_17__ {scalar_t__ tail_repair_time; int const hot_lru_pct; int const warm_lru_pct; int slab_automove; int lru_segmented; int evict_to_free; } ;




 int ITEM_ACTIVE ;
 int ITEM_FETCHED ;
 unsigned int ITEM_clsid (TYPE_1__*) ;
 int ITEM_key (TYPE_1__*) ;
 int LOGGER_EVICTION ;
 int LOGGER_LOG (int *,int ,int ,TYPE_1__*) ;
 int LOG_EVICTIONS ;
 int const LRU_PULL_CRAWL_BLOCKS ;
 int const LRU_PULL_EVICT ;
 int const LRU_PULL_RETURN_ITEM ;
 int STORAGE_delete (int ,TYPE_1__*) ;


 scalar_t__ current_time ;
 int do_item_link_q (TYPE_1__*) ;
 int do_item_remove (TYPE_1__*) ;
 int do_item_unlink_nolock (TYPE_1__*,int ) ;
 int do_item_unlink_q (TYPE_1__*) ;
 int ext_storage ;
 int hash (int ,scalar_t__) ;
 scalar_t__ item_is_flushed (TYPE_1__*) ;
 int item_link_q (TYPE_1__*) ;
 void* item_trylock (int ) ;
 int item_trylock_unlock (void*) ;
 TYPE_5__* itemstats ;
 int * lru_locks ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int refcount_incr (TYPE_1__*) ;
 TYPE_3__ settings ;
 int* sizes_bytes ;
 int slabs_reassign (int,int const) ;
 TYPE_1__** tails ;

int lru_pull_tail(const int orig_id, const int cur_lru,
        const uint64_t total_bytes, const uint8_t flags, const rel_time_t max_age,
        struct lru_pull_tail_return *ret_it) {
    item *it = ((void*)0);
    int id = orig_id;
    int removed = 0;
    if (id == 0)
        return 0;

    int tries = 5;
    item *search;
    item *next_it;
    void *hold_lock = ((void*)0);
    unsigned int move_to_lru = 0;
    uint64_t limit = 0;

    id |= cur_lru;
    pthread_mutex_lock(&lru_locks[id]);
    search = tails[id];

    for (; tries > 0 && search != ((void*)0); tries--, search=next_it) {

        next_it = search->prev;
        if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {

            if (flags & LRU_PULL_CRAWL_BLOCKS) {
                pthread_mutex_unlock(&lru_locks[id]);
                return 0;
            }
            tries++;
            continue;
        }
        uint32_t hv = hash(ITEM_key(search), search->nkey);


        if ((hold_lock = item_trylock(hv)) == ((void*)0))
            continue;

        if (refcount_incr(search) != 2) {


            itemstats[id].lrutail_reflocked++;


            if (settings.tail_repair_time &&
                    search->time + settings.tail_repair_time < current_time) {
                itemstats[id].tailrepairs++;
                search->refcount = 1;

                STORAGE_delete(ext_storage, search);
                do_item_unlink_nolock(search, hv);
                item_trylock_unlock(hold_lock);
                continue;
            }
        }


        if ((search->exptime != 0 && search->exptime < current_time)
            || item_is_flushed(search)) {
            itemstats[id].reclaimed++;
            if ((search->it_flags & ITEM_FETCHED) == 0) {
                itemstats[id].expired_unfetched++;
            }

            do_item_unlink_nolock(search, hv);
            STORAGE_delete(ext_storage, search);

            do_item_remove(search);
            item_trylock_unlock(hold_lock);
            removed++;


            continue;
        }




        switch (cur_lru) {
            case 130:
                limit = total_bytes * settings.hot_lru_pct / 100;
            case 128:
                if (limit == 0)
                    limit = total_bytes * settings.warm_lru_pct / 100;

                if ((search->it_flags & ITEM_ACTIVE) != 0) {
                    search->it_flags &= ~ITEM_ACTIVE;
                    removed++;
                    if (cur_lru == 128) {
                        itemstats[id].moves_within_lru++;
                        do_item_unlink_q(search);
                        do_item_link_q(search);
                        do_item_remove(search);
                        item_trylock_unlock(hold_lock);
                    } else {

                        itemstats[id].moves_to_warm++;
                        move_to_lru = 128;
                        do_item_unlink_q(search);
                        it = search;
                    }
                } else if (sizes_bytes[id] > limit ||
                           current_time - search->time > max_age) {
                    itemstats[id].moves_to_cold++;
                    move_to_lru = 131;
                    do_item_unlink_q(search);
                    it = search;
                    removed++;
                    break;
                } else {

                    it = search;
                }
                break;
            case 131:
                it = search;
                if (flags & LRU_PULL_EVICT) {
                    if (settings.evict_to_free == 0) {

                        break;
                    }
                    itemstats[id].evicted++;
                    itemstats[id].evicted_time = current_time - search->time;
                    if (search->exptime != 0)
                        itemstats[id].evicted_nonzero++;
                    if ((search->it_flags & ITEM_FETCHED) == 0) {
                        itemstats[id].evicted_unfetched++;
                    }
                    if ((search->it_flags & ITEM_ACTIVE)) {
                        itemstats[id].evicted_active++;
                    }
                    LOGGER_LOG(((void*)0), LOG_EVICTIONS, LOGGER_EVICTION, search);
                    STORAGE_delete(ext_storage, search);
                    do_item_unlink_nolock(search, hv);
                    removed++;
                    if (settings.slab_automove == 2) {
                        slabs_reassign(-1, orig_id);
                    }
                } else if (flags & LRU_PULL_RETURN_ITEM) {

                    ret_it->it = it;
                    ret_it->hv = hv;
                } else if ((search->it_flags & ITEM_ACTIVE) != 0
                        && settings.lru_segmented) {
                    itemstats[id].moves_to_warm++;
                    search->it_flags &= ~ITEM_ACTIVE;
                    move_to_lru = 128;
                    do_item_unlink_q(search);
                    removed++;
                }
                break;
            case 129:
                it = search;
                break;
        }
        if (it != ((void*)0))
            break;
    }

    pthread_mutex_unlock(&lru_locks[id]);

    if (it != ((void*)0)) {
        if (move_to_lru) {
            it->slabs_clsid = ITEM_clsid(it);
            it->slabs_clsid |= move_to_lru;
            item_link_q(it);
        }
        if ((flags & LRU_PULL_RETURN_ITEM) == 0) {
            do_item_remove(it);
            item_trylock_unlock(hold_lock);
        }
    }

    return removed;
}
