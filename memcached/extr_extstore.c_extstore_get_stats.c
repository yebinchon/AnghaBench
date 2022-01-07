
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct extstore_stats {int pages_free; int pages_used; scalar_t__ bytes_used; scalar_t__ bytes_fragmented; scalar_t__ io_queue; } ;
struct TYPE_6__ {int page_free; int page_count; int io_threadcount; int page_size; TYPE_1__* io_threads; int mutex; int stats; } ;
typedef TYPE_2__ store_engine ;
struct TYPE_5__ {int mutex; scalar_t__ depth; } ;


 int STAT_L (TYPE_2__*) ;
 int STAT_UL (TYPE_2__*) ;
 int memcpy (struct extstore_stats*,int *,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void extstore_get_stats(void *ptr, struct extstore_stats *st) {
    store_engine *e = (store_engine *)ptr;
    STAT_L(e);
    memcpy(st, &e->stats, sizeof(struct extstore_stats));
    STAT_UL(e);


    pthread_mutex_lock(&e->mutex);
    st->pages_free = e->page_free;
    st->pages_used = e->page_count - e->page_free;
    pthread_mutex_unlock(&e->mutex);
    st->io_queue = 0;
    for (int x = 0; x < e->io_threadcount; x++) {
        pthread_mutex_lock(&e->io_threads[x].mutex);
        st->io_queue += e->io_threads[x].depth;
        pthread_mutex_unlock(&e->io_threads[x].mutex);
    }


    st->bytes_fragmented = st->pages_used * e->page_size -
        st->bytes_used;
}
