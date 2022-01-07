
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cond; int mutex; int depth; TYPE_2__* queue; } ;
typedef TYPE_1__ store_io_thread ;
typedef int store_engine ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ obj_io ;


 TYPE_1__* _get_io_thread (int *) ;
 int assert (int) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int extstore_submit(void *ptr, obj_io *io) {
    store_engine *e = (store_engine *)ptr;
    store_io_thread *t = _get_io_thread(e);

    pthread_mutex_lock(&t->mutex);
    if (t->queue == ((void*)0)) {
        t->queue = io;
    } else {



        obj_io *tmp = t->queue;
        while (tmp->next != ((void*)0)) {
            tmp = tmp->next;
            assert(tmp != t->queue);
        }
        tmp->next = io;
    }

    obj_io *tio = io;
    while (tio != ((void*)0)) {
        t->depth++;
        tio = tio->next;
    }
    pthread_mutex_unlock(&t->mutex);


    pthread_cond_signal(&t->cond);

    return 0;
}
