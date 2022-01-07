
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct extstore_page_data {scalar_t__ free_bucket; scalar_t__ version; int bucket; scalar_t__ bytes_used; } ;
struct TYPE_10__ {size_t id; scalar_t__ free_bucket; scalar_t__ obj_count; int closed; scalar_t__ version; scalar_t__ refcount; int mutex; scalar_t__ bytes_used; int bucket; scalar_t__ free; scalar_t__ active; } ;
typedef TYPE_2__ store_page ;
struct TYPE_11__ {int mutex; int cond; TYPE_4__* e; } ;
typedef TYPE_3__ store_maint_thread ;
struct TYPE_9__ {int page_data; int bytes_evicted; int objects_evicted; int page_evictions; } ;
struct TYPE_12__ {int page_count; scalar_t__ page_free; TYPE_1__ stats; TYPE_2__* pages; int mutex; int * page_freelist; } ;
typedef TYPE_4__ store_engine ;


 int E_DEBUG (char*,size_t,unsigned long long) ;
 int STAT_L (TYPE_4__*) ;
 int STAT_UL (TYPE_4__*) ;
 scalar_t__ ULLONG_MAX ;
 int _free_page (TYPE_4__*,TYPE_2__*) ;
 struct extstore_page_data* calloc (int,int) ;
 int memcpy (int ,struct extstore_page_data*,int) ;
 int memset (struct extstore_page_data*,int ,int) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void *extstore_maint_thread(void *arg) {
    store_maint_thread *me = (store_maint_thread *)arg;
    store_engine *e = me->e;
    struct extstore_page_data *pd =
        calloc(e->page_count, sizeof(struct extstore_page_data));
    pthread_mutex_lock(&me->mutex);
    while (1) {
        int i;
        bool do_evict = 0;
        unsigned int low_page = 0;
        uint64_t low_version = ULLONG_MAX;

        pthread_cond_wait(&me->cond, &me->mutex);
        pthread_mutex_lock(&e->mutex);


        if (e->page_free == 0 || e->page_freelist == ((void*)0)) {
            do_evict = 1;
        }
        pthread_mutex_unlock(&e->mutex);
        memset(pd, 0, sizeof(struct extstore_page_data) * e->page_count);

        for (i = 0; i < e->page_count; i++) {
            store_page *p = &e->pages[i];
            pthread_mutex_lock(&p->mutex);
            pd[p->id].free_bucket = p->free_bucket;
            if (p->active || p->free) {
                pthread_mutex_unlock(&p->mutex);
                continue;
            }
            if (p->obj_count > 0 && !p->closed) {
                pd[p->id].version = p->version;
                pd[p->id].bytes_used = p->bytes_used;
                pd[p->id].bucket = p->bucket;






                if (p->free_bucket == 0 && p->version < low_version) {
                    low_version = p->version;
                    low_page = i;
                }
            }
            if ((p->obj_count == 0 || p->closed) && p->refcount == 0) {
                _free_page(e, p);

                do_evict = 0;
            }
            pthread_mutex_unlock(&p->mutex);
        }

        if (do_evict && low_version != ULLONG_MAX) {
            store_page *p = &e->pages[low_page];
            E_DEBUG("EXTSTORE: evicting page [%d] [v: %llu]\n",
                    p->id, (unsigned long long) p->version);
            pthread_mutex_lock(&p->mutex);
            if (!p->closed) {
                p->closed = 1;
                STAT_L(e);
                e->stats.page_evictions++;
                e->stats.objects_evicted += p->obj_count;
                e->stats.bytes_evicted += p->bytes_used;
                STAT_UL(e);
                if (p->refcount == 0) {
                    _free_page(e, p);
                }
            }
            pthread_mutex_unlock(&p->mutex);
        }



        STAT_L(e);
        memcpy(e->stats.page_data, pd,
                sizeof(struct extstore_page_data) * e->page_count);
        STAT_UL(e);
    }

    return ((void*)0);
}
