
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rrdengine_instance {int dummy; } ;
struct rrdeng_page_descr {unsigned long pg_cache_descr_state; struct page_cache_descr* pg_cache_descr; } ;
struct page_cache_descr {int mutex; struct rrdeng_page_descr* descr; } ;


 int PG_CACHE_DESCR_ALLOCATED ;
 unsigned long PG_CACHE_DESCR_FLAGS_MASK ;
 unsigned long PG_CACHE_DESCR_LOCKED ;
 unsigned long PG_CACHE_DESCR_SHIFT ;
 int assert (unsigned long) ;
 struct page_cache_descr* rrdeng_create_pg_cache_descr (struct rrdengine_instance*) ;
 int rrdeng_destroy_pg_cache_descr (struct rrdengine_instance*,struct page_cache_descr*) ;
 unsigned long ulong_compare_and_swap (unsigned long*,unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int uv_mutex_lock (int *) ;

void rrdeng_page_descr_mutex_lock(struct rrdengine_instance *ctx, struct rrdeng_page_descr *descr)
{
    unsigned long old_state, old_users, new_state, ret_state;
    struct page_cache_descr *pg_cache_descr = ((void*)0);
    uint8_t we_locked;

    we_locked = 0;
    while (1) {
        old_state = descr->pg_cache_descr_state;
        old_users = old_state >> PG_CACHE_DESCR_SHIFT;

        if (unlikely(we_locked)) {
            assert(old_state & PG_CACHE_DESCR_LOCKED);
            new_state = (1 << PG_CACHE_DESCR_SHIFT) | PG_CACHE_DESCR_ALLOCATED;
            ret_state = ulong_compare_and_swap(&descr->pg_cache_descr_state, old_state, new_state);
            if (old_state == ret_state) {

                break;
            }
            continue;
        }
        if (old_state & PG_CACHE_DESCR_LOCKED) {
            assert(0 == old_users);
            continue;
        }
        if (0 == old_state) {


            if (((void*)0) == pg_cache_descr) {
                pg_cache_descr = rrdeng_create_pg_cache_descr(ctx);
            }
            new_state = PG_CACHE_DESCR_LOCKED;
            ret_state = ulong_compare_and_swap(&descr->pg_cache_descr_state, 0, new_state);
            if (0 == ret_state) {
                we_locked = 1;
                descr->pg_cache_descr = pg_cache_descr;
                pg_cache_descr->descr = descr;
                pg_cache_descr = ((void*)0);

                continue;
            }
            continue;
        }

        assert(old_state & PG_CACHE_DESCR_ALLOCATED);

        new_state = (old_users + 1) << PG_CACHE_DESCR_SHIFT;
        new_state |= old_state & PG_CACHE_DESCR_FLAGS_MASK;

        ret_state = ulong_compare_and_swap(&descr->pg_cache_descr_state, old_state, new_state);
        if (old_state == ret_state) {

            break;
        }

    }

    if (pg_cache_descr) {
        rrdeng_destroy_pg_cache_descr(ctx, pg_cache_descr);
    }
    pg_cache_descr = descr->pg_cache_descr;
    uv_mutex_lock(&pg_cache_descr->mutex);
}
