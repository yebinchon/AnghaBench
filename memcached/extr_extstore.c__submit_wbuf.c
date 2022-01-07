
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int id; TYPE_4__* wbuf; } ;
typedef TYPE_1__ store_page ;
struct TYPE_10__ {int mutex; TYPE_3__* io_stack; } ;
typedef TYPE_2__ store_engine ;
struct TYPE_11__ {int cb; scalar_t__ buf; scalar_t__ len; int offset; TYPE_4__* data; int page_id; int mode; struct TYPE_11__* next; } ;
typedef TYPE_3__ obj_io ;
struct TYPE_12__ {scalar_t__ buf; scalar_t__ size; int offset; scalar_t__ free; } ;
typedef TYPE_4__ _store_wbuf ;


 int OBJ_IO_WRITE ;
 int _wbuf_cb ;
 int extstore_submit (TYPE_2__*,TYPE_3__*) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void _submit_wbuf(store_engine *e, store_page *p) {
    _store_wbuf *w;
    pthread_mutex_lock(&e->mutex);
    obj_io *io = e->io_stack;
    e->io_stack = io->next;
    pthread_mutex_unlock(&e->mutex);
    w = p->wbuf;


    memset(w->buf + (w->size - w->free), 0, w->free);

    io->next = ((void*)0);
    io->mode = OBJ_IO_WRITE;
    io->page_id = p->id;
    io->data = w;
    io->offset = w->offset;
    io->len = w->size;
    io->buf = w->buf;
    io->cb = _wbuf_cb;

    extstore_submit(e, io);
}
