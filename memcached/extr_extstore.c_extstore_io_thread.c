
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int mutex; int refcount; scalar_t__ offset; int fd; scalar_t__ written; int active; int version; int closed; int free; } ;
typedef TYPE_2__ store_page ;
struct TYPE_14__ {int depth; int mutex; TYPE_5__* queue; int cond; TYPE_4__* e; } ;
typedef TYPE_3__ store_io_thread ;
struct TYPE_12__ {int objects_read; int bytes_read; } ;
struct TYPE_15__ {int io_depth; TYPE_1__ stats; TYPE_2__* pages; } ;
typedef TYPE_4__ store_engine ;
struct TYPE_16__ {size_t page_id; int mode; int (* cb ) (TYPE_4__*,TYPE_5__*,int) ;scalar_t__ offset; int len; int buf; int iovcnt; int * iov; int page_version; struct TYPE_16__* next; } ;
typedef TYPE_5__ obj_io ;


 int E_DEBUG (char*) ;


 int SEEK_SET ;
 int STAT_L (TYPE_4__*) ;
 int STAT_UL (TYPE_4__*) ;
 int _read_from_wbuf (TYPE_2__*,TYPE_5__*) ;
 int lseek (int ,int ,scalar_t__) ;
 int perror (char*) ;
 int pread (int ,int ,int ,scalar_t__) ;
 int preadv (int ,int *,int ,scalar_t__) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pwrite (int ,int ,int ,scalar_t__) ;
 int read (int ,int ,int ) ;
 int readv (int ,int *,int ) ;
 int stub1 (TYPE_4__*,TYPE_5__*,int) ;

__attribute__((used)) static void *extstore_io_thread(void *arg) {
    store_io_thread *me = (store_io_thread *)arg;
    store_engine *e = me->e;
    while (1) {
        obj_io *io_stack = ((void*)0);
        pthread_mutex_lock(&me->mutex);
        if (me->queue == ((void*)0)) {
            pthread_cond_wait(&me->cond, &me->mutex);
        }


        if (me->queue != ((void*)0)) {
            int i;
            obj_io *end = ((void*)0);
            io_stack = me->queue;
            end = io_stack;
            for (i = 1; i < e->io_depth; i++) {
                if (end->next) {
                    end = end->next;
                } else {
                    break;
                }
            }
            me->depth -= i;
            me->queue = end->next;
            end->next = ((void*)0);
        }
        pthread_mutex_unlock(&me->mutex);

        obj_io *cur_io = io_stack;
        while (cur_io) {


            obj_io *next = cur_io->next;
            int ret = 0;
            int do_op = 1;
            store_page *p = &e->pages[cur_io->page_id];

            switch (cur_io->mode) {
                case 129:

                    pthread_mutex_lock(&p->mutex);
                    if (!p->free && !p->closed && p->version == cur_io->page_version) {
                        if (p->active && cur_io->offset >= p->written) {
                            ret = _read_from_wbuf(p, cur_io);
                            do_op = 0;
                        } else {
                            p->refcount++;
                        }
                        STAT_L(e);
                        e->stats.bytes_read += cur_io->len;
                        e->stats.objects_read++;
                        STAT_UL(e);
                    } else {
                        do_op = 0;
                        ret = -2;
                    }
                    pthread_mutex_unlock(&p->mutex);
                    if (do_op) {
                        if (cur_io->iov == ((void*)0)) {
                            ret = pread(p->fd, cur_io->buf, cur_io->len, p->offset + cur_io->offset);
                        } else {
                            ret = preadv(p->fd, cur_io->iov, cur_io->iovcnt, p->offset + cur_io->offset);
                        }

                    }
                    break;
                case 128:
                    do_op = 0;


                    ret = pwrite(p->fd, cur_io->buf, cur_io->len, p->offset + cur_io->offset);
                    break;
            }
            if (ret == 0) {
                E_DEBUG("read returned nothing\n");
            }






            cur_io->cb(e, cur_io, ret);
            if (do_op) {
                pthread_mutex_lock(&p->mutex);
                p->refcount--;
                pthread_mutex_unlock(&p->mutex);
            }
            cur_io = next;
        }
    }

    return ((void*)0);
}
