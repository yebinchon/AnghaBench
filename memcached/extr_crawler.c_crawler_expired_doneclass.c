
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct crawler_expired_data {int lock; TYPE_1__* crawlerstats; } ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_2__ crawler_module_t ;
struct TYPE_4__ {int run_complete; int end_time; } ;


 int current_time ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void crawler_expired_doneclass(crawler_module_t *cm, int slab_cls) {
    struct crawler_expired_data *d = (struct crawler_expired_data *) cm->data;
    pthread_mutex_lock(&d->lock);
    d->crawlerstats[slab_cls].end_time = current_time;
    d->crawlerstats[slab_cls].run_complete = 1;
    pthread_mutex_unlock(&d->lock);
}
