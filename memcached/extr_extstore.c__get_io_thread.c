
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long long depth; } ;
typedef TYPE_1__ store_io_thread ;
struct TYPE_6__ {int io_threadcount; TYPE_1__* io_threads; int mutex; } ;
typedef TYPE_2__ store_engine ;


 long long LLONG_MAX ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static store_io_thread *_get_io_thread(store_engine *e) {
    int tid = -1;
    long long int low = LLONG_MAX;
    pthread_mutex_lock(&e->mutex);



    for (int x = 0; x < e->io_threadcount; x++) {
        if (e->io_threads[x].depth == 0) {
            tid = x;
            break;
        } else if (e->io_threads[x].depth < low) {
                tid = x;
            low = e->io_threads[x].depth;
        }
    }
    pthread_mutex_unlock(&e->mutex);

    return &e->io_threads[tid];
}
