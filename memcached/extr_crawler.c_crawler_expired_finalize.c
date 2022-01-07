
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct crawler_expired_data {int crawl_complete; int is_external; int lock; int end_time; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ crawler_module_t ;


 int current_time ;
 int free (struct crawler_expired_data*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void crawler_expired_finalize(crawler_module_t *cm) {
    struct crawler_expired_data *d = (struct crawler_expired_data *) cm->data;
    pthread_mutex_lock(&d->lock);
    d->end_time = current_time;
    d->crawl_complete = 1;
    pthread_mutex_unlock(&d->lock);

    if (!d->is_external) {
        free(d);
    }
}
