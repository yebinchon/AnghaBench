
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int mutex; int obj_count; int bytes_used; TYPE_1__* wbuf; int version; } ;
typedef TYPE_3__ store_page ;
struct TYPE_10__ {int objects_used; int objects_written; int bytes_used; int bytes_written; } ;
struct TYPE_12__ {TYPE_2__ stats; TYPE_3__* pages; } ;
typedef TYPE_4__ store_engine ;
struct TYPE_13__ {size_t page_id; scalar_t__ len; int page_version; scalar_t__ offset; } ;
typedef TYPE_5__ obj_io ;
struct TYPE_9__ {scalar_t__ free; int buf_pos; scalar_t__ size; scalar_t__ offset; } ;


 int STAT_L (TYPE_4__*) ;
 int STAT_UL (TYPE_4__*) ;
 int pthread_mutex_unlock (int *) ;

void extstore_write(void *ptr, obj_io *io) {
    store_engine *e = (store_engine *)ptr;
    store_page *p = &e->pages[io->page_id];

    io->offset = p->wbuf->offset + (p->wbuf->size - p->wbuf->free);
    io->page_version = p->version;
    p->wbuf->buf_pos += io->len;
    p->wbuf->free -= io->len;
    p->bytes_used += io->len;
    p->obj_count++;
    STAT_L(e);
    e->stats.bytes_written += io->len;
    e->stats.bytes_used += io->len;
    e->stats.objects_written++;
    e->stats.objects_used++;
    STAT_UL(e);

    pthread_mutex_unlock(&p->mutex);
}
