
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_29__ {int it_flags; int exptime; int nkey; scalar_t__ nbytes; } ;
typedef TYPE_4__ item ;
typedef enum store_item_type { ____Placeholder_store_item_type } store_item_type ;
struct TYPE_30__ {int sfd; TYPE_3__* thread; scalar_t__ cas; scalar_t__ set_stale; } ;
typedef TYPE_5__ conn ;
struct TYPE_31__ {int verbose; } ;
struct TYPE_27__ {int mutex; TYPE_1__* slab_stats; int cas_misses; } ;
struct TYPE_28__ {int l; int storage; TYPE_2__ stats; } ;
struct TYPE_26__ {int cas_badval; int cas_hits; } ;


 int DONT_UPDATE ;
 int EXISTS ;
 int FLAGS_CONV (TYPE_4__*,int ) ;
 int ITEM_HDR ;
 int ITEM_STALE ;
 int ITEM_TOKEN_SENT ;
 size_t ITEM_clsid (TYPE_4__*) ;
 scalar_t__ ITEM_get_cas (TYPE_4__*) ;
 char* ITEM_key (TYPE_4__*) ;
 int LOGGER_ITEM_STORE ;
 int LOGGER_LOG (int ,int ,int ,int *,int,int,char*,int ,int ,size_t,int ) ;
 int LOG_MUTATIONS ;
 int NOT_FOUND ;
 int NOT_STORED ;
 int NREAD_ADD ;
 int NREAD_APPEND ;
 int NREAD_CAS ;
 int NREAD_PREPEND ;
 int NREAD_REPLACE ;
 int STORAGE_delete (int ,TYPE_4__*) ;
 int STORED ;
 int _store_item_copy_data (int,TYPE_4__*,TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* do_item_alloc (char*,int ,int ,int ,scalar_t__) ;
 TYPE_4__* do_item_get (char*,int ,int const,TYPE_5__*,int ) ;
 int do_item_link (TYPE_4__*,int const) ;
 int do_item_remove (TYPE_4__*) ;
 int do_item_update (TYPE_4__*) ;
 int fprintf (int ,char*,unsigned long long,unsigned long long) ;
 int item_remove (TYPE_4__*) ;
 int item_replace (TYPE_4__*,TYPE_4__*,int const) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_6__ settings ;
 int stderr ;

enum store_item_type do_store_item(item *it, int comm, conn *c, const uint32_t hv) {
    char *key = ITEM_key(it);
    item *old_it = do_item_get(key, it->nkey, hv, c, DONT_UPDATE);
    enum store_item_type stored = NOT_STORED;

    item *new_it = ((void*)0);
    uint32_t flags;

    if (old_it != ((void*)0) && comm == NREAD_ADD) {

        do_item_update(old_it);
    } else if (!old_it && (comm == NREAD_REPLACE
        || comm == NREAD_APPEND || comm == NREAD_PREPEND))
    {

    } else if (comm == NREAD_CAS) {

        if (old_it == ((void*)0)) {

            stored = NOT_FOUND;
            pthread_mutex_lock(&c->thread->stats.mutex);
            c->thread->stats.cas_misses++;
            pthread_mutex_unlock(&c->thread->stats.mutex);
        }
        else if (ITEM_get_cas(it) == ITEM_get_cas(old_it)) {



            pthread_mutex_lock(&c->thread->stats.mutex);
            c->thread->stats.slab_stats[ITEM_clsid(old_it)].cas_hits++;
            pthread_mutex_unlock(&c->thread->stats.mutex);

            STORAGE_delete(c->thread->storage, old_it);
            item_replace(old_it, it, hv);
            stored = STORED;
        } else if (c->set_stale && ITEM_get_cas(it) < ITEM_get_cas(old_it)) {




            it->exptime = old_it->exptime;
            it->it_flags |= ITEM_STALE;
            if (old_it->it_flags & ITEM_TOKEN_SENT) {
                it->it_flags |= ITEM_TOKEN_SENT;
            }

            pthread_mutex_lock(&c->thread->stats.mutex);
            c->thread->stats.slab_stats[ITEM_clsid(old_it)].cas_hits++;
            pthread_mutex_unlock(&c->thread->stats.mutex);

            STORAGE_delete(c->thread->storage, old_it);
            item_replace(old_it, it, hv);
            stored = STORED;
        } else {
            pthread_mutex_lock(&c->thread->stats.mutex);
            c->thread->stats.slab_stats[ITEM_clsid(old_it)].cas_badval++;
            pthread_mutex_unlock(&c->thread->stats.mutex);

            if(settings.verbose > 1) {
                fprintf(stderr, "CAS:  failure: expected %llu, got %llu\n",
                        (unsigned long long)ITEM_get_cas(old_it),
                        (unsigned long long)ITEM_get_cas(it));
            }
            stored = EXISTS;
        }
    } else {
        int failed_alloc = 0;




        if (comm == NREAD_APPEND || comm == NREAD_PREPEND) {



            if (ITEM_get_cas(it) != 0) {

                if (ITEM_get_cas(it) != ITEM_get_cas(old_it)) {
                    stored = EXISTS;
                }
            }
            if (stored == NOT_STORED) {

                FLAGS_CONV(old_it, flags);
                new_it = do_item_alloc(key, it->nkey, flags, old_it->exptime, it->nbytes + old_it->nbytes - 2 );


                if (new_it == ((void*)0) || _store_item_copy_data(comm, old_it, new_it, it) == -1) {
                    failed_alloc = 1;
                    stored = NOT_STORED;

                    if (new_it != ((void*)0))
                        item_remove(new_it);
                } else {
                    it = new_it;
                }
            }
        }

        if (stored == NOT_STORED && failed_alloc == 0) {
            if (old_it != ((void*)0)) {
                STORAGE_delete(c->thread->storage, old_it);
                item_replace(old_it, it, hv);
            } else {
                do_item_link(it, hv);
            }

            c->cas = ITEM_get_cas(it);

            stored = STORED;
        }
    }

    if (old_it != ((void*)0))
        do_item_remove(old_it);
    if (new_it != ((void*)0))
        do_item_remove(new_it);

    if (stored == STORED) {
        c->cas = ITEM_get_cas(it);
    }
    LOGGER_LOG(c->thread->l, LOG_MUTATIONS, LOGGER_ITEM_STORE, ((void*)0),
            stored, comm, ITEM_key(it), it->nkey, it->exptime, ITEM_clsid(it), c->sfd);

    return stored;
}
