
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ written; int active; int mutex; TYPE_4__* wbuf; } ;
typedef TYPE_1__ store_page ;
struct TYPE_7__ {scalar_t__ page_size; int mutex; TYPE_3__* io_stack; TYPE_4__* wbuf_stack; TYPE_1__* pages; } ;
typedef TYPE_2__ store_engine ;
struct TYPE_8__ {size_t page_id; struct TYPE_8__* next; scalar_t__ data; } ;
typedef TYPE_3__ obj_io ;
struct TYPE_9__ {int flushed; scalar_t__ offset; scalar_t__ size; struct TYPE_9__* next; } ;
typedef TYPE_4__ _store_wbuf ;


 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void _wbuf_cb(void *ep, obj_io *io, int ret) {
    store_engine *e = (store_engine *)ep;
    store_page *p = &e->pages[io->page_id];
    _store_wbuf *w = (_store_wbuf *) io->data;



    w->flushed = 1;
    pthread_mutex_lock(&p->mutex);
    assert(p->wbuf != ((void*)0) && p->wbuf == w);
    assert(p->written == w->offset);
    p->written += w->size;
    p->wbuf = ((void*)0);

    if (p->written == e->page_size)
        p->active = 0;


    pthread_mutex_lock(&e->mutex);
    w->next = e->wbuf_stack;
    e->wbuf_stack = w;

    io->next = e->io_stack;
    e->io_stack = io;
    pthread_mutex_unlock(&e->mutex);
    pthread_mutex_unlock(&p->mutex);
}
