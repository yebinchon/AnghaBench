
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* wbuf; int allocated; } ;
typedef TYPE_1__ store_page ;
struct TYPE_7__ {int mutex; TYPE_3__* wbuf_stack; } ;
typedef TYPE_2__ store_engine ;
struct TYPE_8__ {int full; int flushed; int buf; int buf_pos; scalar_t__ size; scalar_t__ free; int offset; struct TYPE_8__* next; } ;
typedef TYPE_3__ _store_wbuf ;


 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void _allocate_wbuf(store_engine *e, store_page *p) {
    _store_wbuf *wbuf = ((void*)0);
    assert(!p->wbuf);
    pthread_mutex_lock(&e->mutex);
    if (e->wbuf_stack) {
        wbuf = e->wbuf_stack;
        e->wbuf_stack = wbuf->next;
        wbuf->next = 0;
    }
    pthread_mutex_unlock(&e->mutex);
    if (wbuf) {
        wbuf->offset = p->allocated;
        p->allocated += wbuf->size;
        wbuf->free = wbuf->size;
        wbuf->buf_pos = wbuf->buf;
        wbuf->full = 0;
        wbuf->flushed = 0;

        p->wbuf = wbuf;
    }
}
