
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct crawler_expired_data {int is_external; int lock; TYPE_2__* crawlerstats; void* start_time; } ;
typedef int crawlerstats_t ;
struct TYPE_4__ {struct crawler_expired_data* data; } ;
typedef TYPE_1__ crawler_module_t ;
struct TYPE_5__ {int run_complete; void* start_time; } ;


 int POWER_LARGEST ;
 struct crawler_expired_data* calloc (int,int) ;
 void* current_time ;
 int memset (TYPE_2__**,int ,int) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int crawler_expired_init(crawler_module_t *cm, void *data) {
    struct crawler_expired_data *d;
    if (data != ((void*)0)) {
        d = data;
        d->is_external = 1;
        cm->data = data;
    } else {

        d = calloc(1, sizeof(struct crawler_expired_data));
        if (d == ((void*)0)) {
            return -1;
        }

        pthread_mutex_init(&d->lock, ((void*)0));
        d->is_external = 0;
        d->start_time = current_time;

        cm->data = d;
    }
    pthread_mutex_lock(&d->lock);
    memset(&d->crawlerstats, 0, sizeof(crawlerstats_t) * POWER_LARGEST);
    for (int x = 0; x < POWER_LARGEST; x++) {
        d->crawlerstats[x].start_time = current_time;
        d->crawlerstats[x].run_complete = 0;
    }
    pthread_mutex_unlock(&d->lock);
    return 0;
}
