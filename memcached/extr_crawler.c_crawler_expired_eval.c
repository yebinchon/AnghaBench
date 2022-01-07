
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int uint32_t ;
struct crawler_expired_data {int lock; TYPE_3__* crawlerstats; } ;
typedef int rel_time_t ;
struct TYPE_17__ {int page_version; int page_id; } ;
typedef TYPE_1__ item_hdr ;
struct TYPE_18__ {int it_flags; scalar_t__ exptime; int slabs_clsid; int nkey; } ;
typedef TYPE_2__ item ;
struct TYPE_19__ {int * histo; int ttl_hourplus; int noexp; int seen; int reclaimed; } ;
typedef TYPE_3__ crawlerstats_t ;
struct TYPE_20__ {scalar_t__ data; } ;
typedef TYPE_4__ crawler_module_t ;
struct TYPE_21__ {int verbose; } ;
struct TYPE_16__ {int unfetched; int reclaimed; } ;


 int ITEM_FETCHED ;
 int ITEM_HDR ;
 scalar_t__ ITEM_data (TYPE_2__*) ;
 char* ITEM_key (TYPE_2__*) ;
 int STORAGE_delete (int ,TYPE_2__*) ;
 TYPE_10__* crawlers ;
 scalar_t__ current_time ;
 int do_item_remove (TYPE_2__*) ;
 int do_item_unlink_nolock (TYPE_2__*,int ) ;
 scalar_t__ extstore_check (int ,int ,int ) ;
 int fprintf (int ,char*,...) ;
 int item_is_flushed (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int refcount_decr (TYPE_2__*) ;
 TYPE_5__ settings ;
 int stderr ;
 int storage ;

__attribute__((used)) static void crawler_expired_eval(crawler_module_t *cm, item *search, uint32_t hv, int i) {
    struct crawler_expired_data *d = (struct crawler_expired_data *) cm->data;
    pthread_mutex_lock(&d->lock);
    crawlerstats_t *s = &d->crawlerstats[i];
    int is_flushed = item_is_flushed(search);
    if ((search->exptime != 0 && search->exptime < current_time)
        || is_flushed



        ) {
        crawlers[i].reclaimed++;
        s->reclaimed++;

        if (settings.verbose > 1) {
            int ii;
            char *key = ITEM_key(search);
            fprintf(stderr, "LRU crawler found an expired item (flags: %d, slab: %d): ",
                search->it_flags, search->slabs_clsid);
            for (ii = 0; ii < search->nkey; ++ii) {
                fprintf(stderr, "%c", key[ii]);
            }
            fprintf(stderr, "\n");
        }
        if ((search->it_flags & ITEM_FETCHED) == 0 && !is_flushed) {
            crawlers[i].unfetched++;
        }



        do_item_unlink_nolock(search, hv);
        do_item_remove(search);
    } else {
        s->seen++;
        refcount_decr(search);
        if (search->exptime == 0) {
            s->noexp++;
        } else if (search->exptime - current_time > 3599) {
            s->ttl_hourplus++;
        } else {
            rel_time_t ttl_remain = search->exptime - current_time;
            int bucket = ttl_remain / 60;
            if (bucket <= 60) {
                s->histo[bucket]++;
            }
        }
    }
    pthread_mutex_unlock(&d->lock);
}
