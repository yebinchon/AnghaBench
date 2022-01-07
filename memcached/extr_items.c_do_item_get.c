
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_20__ {scalar_t__ exptime; } ;
typedef TYPE_3__ item ;
struct TYPE_21__ {int sfd; TYPE_2__* thread; } ;
typedef TYPE_4__ conn ;
struct TYPE_22__ {int verbose; } ;
struct TYPE_18__ {int mutex; int get_expired; int get_flushed; } ;
struct TYPE_19__ {int l; TYPE_1__ stats; int storage; } ;


 int DEBUG_REFCNT (TYPE_3__*,char) ;
 int ITEM_clsid (TYPE_3__*) ;
 int LOGGER_ITEM_GET ;
 int LOGGER_LOG (int ,int ,int ,int *,int,char const*,size_t const,int ,int ) ;
 int LOG_FETCHERS ;
 int STORAGE_delete (int ,TYPE_3__*) ;
 TYPE_3__* assoc_find (char const*,size_t const,int const) ;
 scalar_t__ current_time ;
 int do_item_bump (TYPE_4__*,TYPE_3__*,int const) ;
 int do_item_remove (TYPE_3__*) ;
 int do_item_unlink (TYPE_3__*,int const) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ item_is_flushed (TYPE_3__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int refcount_incr (TYPE_3__*) ;
 TYPE_5__ settings ;
 int stderr ;

item *do_item_get(const char *key, const size_t nkey, const uint32_t hv, conn *c, const bool do_update) {
    item *it = assoc_find(key, nkey, hv);
    if (it != ((void*)0)) {
        refcount_incr(it);
    }
    int was_found = 0;

    if (settings.verbose > 2) {
        int ii;
        if (it == ((void*)0)) {
            fprintf(stderr, "> NOT FOUND ");
        } else {
            fprintf(stderr, "> FOUND KEY ");
        }
        for (ii = 0; ii < nkey; ++ii) {
            fprintf(stderr, "%c", key[ii]);
        }
    }

    if (it != ((void*)0)) {
        was_found = 1;
        if (item_is_flushed(it)) {
            do_item_unlink(it, hv);
            STORAGE_delete(c->thread->storage, it);
            do_item_remove(it);
            it = ((void*)0);
            pthread_mutex_lock(&c->thread->stats.mutex);
            c->thread->stats.get_flushed++;
            pthread_mutex_unlock(&c->thread->stats.mutex);
            if (settings.verbose > 2) {
                fprintf(stderr, " -nuked by flush");
            }
            was_found = 2;
        } else if (it->exptime != 0 && it->exptime <= current_time) {
            do_item_unlink(it, hv);
            STORAGE_delete(c->thread->storage, it);
            do_item_remove(it);
            it = ((void*)0);
            pthread_mutex_lock(&c->thread->stats.mutex);
            c->thread->stats.get_expired++;
            pthread_mutex_unlock(&c->thread->stats.mutex);
            if (settings.verbose > 2) {
                fprintf(stderr, " -nuked by expire");
            }
            was_found = 3;
        } else {
            if (do_update) {
                do_item_bump(c, it, hv);
            }
            DEBUG_REFCNT(it, '+');
        }
    }

    if (settings.verbose > 2)
        fprintf(stderr, "\n");

    LOGGER_LOG(c->thread->l, LOG_FETCHERS, LOGGER_ITEM_GET, ((void*)0), was_found, key, nkey,
               (it) ? ITEM_clsid(it) : 0, c->sfd);

    return it;
}
