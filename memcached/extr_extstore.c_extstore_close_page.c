
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int closed; scalar_t__ version; int mutex; } ;
typedef TYPE_1__ store_page ;
struct TYPE_5__ {TYPE_1__* pages; } ;
typedef TYPE_2__ store_engine ;


 int extstore_run_maint (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void extstore_close_page(void *ptr, unsigned int page_id, uint64_t page_version) {
    store_engine *e = (store_engine *)ptr;
    store_page *p = &e->pages[page_id];

    pthread_mutex_lock(&p->mutex);
    if (!p->closed && p->version == page_version) {
        p->closed = 1;
        extstore_run_maint(e);
    }
    pthread_mutex_unlock(&p->mutex);
}
