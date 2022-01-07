
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* h_next; int nkey; } ;
typedef TYPE_1__ item ;
struct TYPE_10__ {int verbose; } ;
struct TYPE_9__ {int hash_bytes; int hash_is_expanding; } ;


 int ITEM_key (TYPE_1__*) ;
 int PAUSE_ALL_THREADS ;
 int RESUME_ALL_THREADS ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int assoc_expand () ;
 scalar_t__ do_run_maintenance_thread ;
 size_t expand_bucket ;
 int expanding ;
 int fprintf (int ,char*) ;
 int free (TYPE_1__**) ;
 unsigned int hash (int ,int ) ;
 int hash_bulk_move ;
 unsigned int hashmask (scalar_t__) ;
 scalar_t__ hashpower ;
 int hashsize (scalar_t__) ;
 void* item_trylock (size_t) ;
 int item_trylock_unlock (void*) ;
 int maintenance_cond ;
 int maintenance_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__** old_hashtable ;
 int pause_threads (int ) ;
 TYPE_1__** primary_hashtable ;
 int pthread_cond_wait (int *,int *) ;
 TYPE_3__ settings ;
 TYPE_2__ stats_state ;
 int stderr ;
 int usleep (int) ;

__attribute__((used)) static void *assoc_maintenance_thread(void *arg) {

    mutex_lock(&maintenance_lock);
    while (do_run_maintenance_thread) {
        int ii = 0;


        for (ii = 0; ii < hash_bulk_move && expanding; ++ii) {
            item *it, *next;
            unsigned int bucket;
            void *item_lock = ((void*)0);





            if ((item_lock = item_trylock(expand_bucket))) {
                    for (it = old_hashtable[expand_bucket]; ((void*)0) != it; it = next) {
                        next = it->h_next;
                        bucket = hash(ITEM_key(it), it->nkey) & hashmask(hashpower);
                        it->h_next = primary_hashtable[bucket];
                        primary_hashtable[bucket] = it;
                    }

                    old_hashtable[expand_bucket] = ((void*)0);

                    expand_bucket++;
                    if (expand_bucket == hashsize(hashpower - 1)) {
                        expanding = 0;
                        free(old_hashtable);
                        STATS_LOCK();
                        stats_state.hash_bytes -= hashsize(hashpower - 1) * sizeof(void *);
                        stats_state.hash_is_expanding = 0;
                        STATS_UNLOCK();
                        if (settings.verbose > 1)
                            fprintf(stderr, "Hash table expansion done\n");
                    }

            } else {
                usleep(10*1000);
            }

            if (item_lock) {
                item_trylock_unlock(item_lock);
                item_lock = ((void*)0);
            }
        }

        if (!expanding) {

            pthread_cond_wait(&maintenance_cond, &maintenance_lock);







            if (do_run_maintenance_thread) {
                pause_threads(PAUSE_ALL_THREADS);
                assoc_expand();
                pause_threads(RESUME_ALL_THREADS);
            }
        }
    }
    mutex_unlock(&maintenance_lock);
    return ((void*)0);
}
