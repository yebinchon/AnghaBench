
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int uint32_t ;
struct TYPE_21__ {int nkey; } ;
typedef TYPE_2__ item ;
struct TYPE_24__ {int crawls_persleep; int lru_crawler; int verbose; scalar_t__ lru_crawler_sleep; } ;
struct TYPE_23__ {int lru_crawler_running; } ;
struct TYPE_18__ {int * c; int buf; } ;
struct TYPE_22__ {TYPE_1__* mod; TYPE_10__ c; } ;
struct TYPE_20__ {int (* finalize ) (TYPE_3__*) ;scalar_t__ needs_lock; int (* eval ) (TYPE_3__*,TYPE_2__*,int ,int) ;scalar_t__ needs_client; } ;
struct TYPE_19__ {int it_flags; int remaining; int checked; } ;


 int ITEM_key (TYPE_2__*) ;
 int LARGEST_ID ;
 int POWER_SMALLEST ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 TYPE_3__ active_crawler_mod ;
 scalar_t__ bipbuf_used (int ) ;
 scalar_t__ crawler_count ;
 TYPE_15__* crawlers ;
 TYPE_2__* do_item_crawl_q (TYPE_2__*) ;
 scalar_t__ do_run_lru_crawler_thread ;
 int fprintf (int ,char*,...) ;
 int hash (int ,int ) ;
 void* item_trylock (int ) ;
 int item_trylock_unlock (void*) ;
 int lru_crawler_class_done (int) ;
 int lru_crawler_client_getbuf (TYPE_10__*) ;
 int lru_crawler_cond ;
 int lru_crawler_lock ;
 int lru_crawler_poll (TYPE_10__*) ;
 int lru_crawler_release_client (TYPE_10__*) ;
 int * lru_locks ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int refcount_decr (TYPE_2__*) ;
 int refcount_incr (TYPE_2__*) ;
 TYPE_7__ settings ;
 TYPE_6__ stats_state ;
 int stderr ;
 int stub1 (TYPE_3__*,TYPE_2__*,int ,int) ;
 int stub2 (TYPE_3__*) ;
 int usleep (scalar_t__) ;

__attribute__((used)) static void *item_crawler_thread(void *arg) {
    int i;
    int crawls_persleep = settings.crawls_persleep;

    pthread_mutex_lock(&lru_crawler_lock);
    pthread_cond_signal(&lru_crawler_cond);
    settings.lru_crawler = 1;
    if (settings.verbose > 2)
        fprintf(stderr, "Starting LRU crawler background thread\n");
    while (do_run_lru_crawler_thread) {
    pthread_cond_wait(&lru_crawler_cond, &lru_crawler_lock);

    while (crawler_count) {
        item *search = ((void*)0);
        void *hold_lock = ((void*)0);

        for (i = POWER_SMALLEST; i < LARGEST_ID; i++) {
            if (crawlers[i].it_flags != 1) {
                continue;
            }


            if (active_crawler_mod.c.c != ((void*)0)) {
                int ret = lru_crawler_client_getbuf(&active_crawler_mod.c);
                if (ret != 0) {
                    lru_crawler_class_done(i);
                    continue;
                }
            } else if (active_crawler_mod.mod->needs_client) {
                lru_crawler_class_done(i);
                continue;
            }
            pthread_mutex_lock(&lru_locks[i]);
            search = do_item_crawl_q((item *)&crawlers[i]);
            if (search == ((void*)0) ||
                (crawlers[i].remaining && --crawlers[i].remaining < 1)) {
                if (settings.verbose > 2)
                    fprintf(stderr, "Nothing left to crawl for %d\n", i);
                lru_crawler_class_done(i);
                continue;
            }
            uint32_t hv = hash(ITEM_key(search), search->nkey);



            if ((hold_lock = item_trylock(hv)) == ((void*)0)) {
                pthread_mutex_unlock(&lru_locks[i]);
                continue;
            }

            if (refcount_incr(search) != 2) {
                refcount_decr(search);
                if (hold_lock)
                    item_trylock_unlock(hold_lock);
                pthread_mutex_unlock(&lru_locks[i]);
                continue;
            }

            crawlers[i].checked++;



            if (!active_crawler_mod.mod->needs_lock) {
                pthread_mutex_unlock(&lru_locks[i]);
            }

            active_crawler_mod.mod->eval(&active_crawler_mod, search, hv, i);

            if (hold_lock)
                item_trylock_unlock(hold_lock);
            if (active_crawler_mod.mod->needs_lock) {
                pthread_mutex_unlock(&lru_locks[i]);
            }

            if (crawls_persleep-- <= 0 && settings.lru_crawler_sleep) {
                pthread_mutex_unlock(&lru_crawler_lock);
                usleep(settings.lru_crawler_sleep);
                pthread_mutex_lock(&lru_crawler_lock);
                crawls_persleep = settings.crawls_persleep;
            } else if (!settings.lru_crawler_sleep) {

                pthread_mutex_unlock(&lru_crawler_lock);
                pthread_mutex_lock(&lru_crawler_lock);
            }
        }
    }

    if (active_crawler_mod.mod != ((void*)0)) {
        if (active_crawler_mod.mod->finalize != ((void*)0))
            active_crawler_mod.mod->finalize(&active_crawler_mod);
        while (active_crawler_mod.c.c != ((void*)0) && bipbuf_used(active_crawler_mod.c.buf)) {
            lru_crawler_poll(&active_crawler_mod.c);
        }

        if (active_crawler_mod.c.c != ((void*)0)) {
            lru_crawler_release_client(&active_crawler_mod.c);
        }
        active_crawler_mod.mod = ((void*)0);
    }

    if (settings.verbose > 2)
        fprintf(stderr, "LRU crawler thread sleeping\n");

    STATS_LOCK();
    stats_state.lru_crawler_running = 0;
    STATS_UNLOCK();
    }
    pthread_mutex_unlock(&lru_crawler_lock);
    if (settings.verbose > 2)
        fprintf(stderr, "LRU crawler thread stopping\n");
    settings.lru_crawler = 0;

    return ((void*)0);
}
