
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rrdengine_instance {int dummy; } ;
struct rrdeng_page_descr {unsigned long pg_cache_descr_state; struct page_cache_descr* pg_cache_descr; } ;
struct page_cache_descr {int refcnt; int flags; } ;


 unsigned long PG_CACHE_DESCR_ALLOCATED ;
 unsigned long PG_CACHE_DESCR_DESTROY ;
 unsigned long PG_CACHE_DESCR_LOCKED ;
 unsigned long PG_CACHE_DESCR_SHIFT ;
 int assert (int) ;
 int rrdeng_destroy_pg_cache_descr (struct rrdengine_instance*,struct page_cache_descr*) ;
 unsigned long ulong_compare_and_swap (unsigned long*,unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;

void rrdeng_try_deallocate_pg_cache_descr(struct rrdengine_instance *ctx, struct rrdeng_page_descr *descr)
{
    unsigned long old_state, new_state, ret_state, old_users;
    struct page_cache_descr *pg_cache_descr;
    uint8_t just_locked, we_freed, must_unlock;

    just_locked = 0;
    we_freed = 0;
    must_unlock = 0;
    while (1) {
        old_state = descr->pg_cache_descr_state;
        old_users = old_state >> PG_CACHE_DESCR_SHIFT;

        if (unlikely(just_locked)) {
            assert(0 == old_users);

            must_unlock = 1;
            just_locked = 0;

            if (!pg_cache_descr->flags && !pg_cache_descr->refcnt) {
                rrdeng_destroy_pg_cache_descr(ctx, pg_cache_descr);
                we_freed = 1;

                continue;
            }
            continue;
        }
        if (unlikely(must_unlock)) {
            assert(0 == old_users);

            if (we_freed) {

                new_state = 0;
            } else {
                new_state = old_state | PG_CACHE_DESCR_DESTROY;
                new_state &= ~PG_CACHE_DESCR_LOCKED;
            }
            ret_state = ulong_compare_and_swap(&descr->pg_cache_descr_state, old_state, new_state);
            if (old_state == ret_state) {

                return;
            }
            continue;
        }
        if (!(old_state & PG_CACHE_DESCR_ALLOCATED)) {

            return;
        }
        if (old_state & PG_CACHE_DESCR_LOCKED) {
            assert(0 == old_users);
            continue;
        }
        pg_cache_descr = descr->pg_cache_descr;

        if (0 == old_users) {
            new_state = old_state | PG_CACHE_DESCR_LOCKED;
            ret_state = ulong_compare_and_swap(&descr->pg_cache_descr_state, old_state, new_state);
            if (old_state == ret_state) {
                just_locked = 1;

                continue;
            }
            continue;
        }
        if (old_state & PG_CACHE_DESCR_DESTROY) {

            return;
        }

        new_state = old_state | PG_CACHE_DESCR_DESTROY;

        ret_state = ulong_compare_and_swap(&descr->pg_cache_descr_state, old_state, new_state);
        if (old_state == ret_state) {

            return;
        }

    }
}
