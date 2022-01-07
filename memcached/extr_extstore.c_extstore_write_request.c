
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ allocated; int mutex; int id; TYPE_1__* wbuf; int active; } ;
typedef TYPE_2__ store_page ;
struct TYPE_14__ {unsigned int page_bucketcount; scalar_t__ page_size; int mutex; TYPE_2__** page_buckets; } ;
typedef TYPE_3__ store_engine ;
struct TYPE_15__ {scalar_t__ len; int page_id; int buf; } ;
typedef TYPE_4__ obj_io ;
struct TYPE_12__ {int full; scalar_t__ free; int buf_pos; } ;


 TYPE_2__* _allocate_page (TYPE_3__*,unsigned int,unsigned int) ;
 int _allocate_wbuf (TYPE_3__*,TYPE_2__*) ;
 int _submit_wbuf (TYPE_3__*,TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int extstore_write_request(void *ptr, unsigned int bucket,
        unsigned int free_bucket, obj_io *io) {
    store_engine *e = (store_engine *)ptr;
    store_page *p;
    int ret = -1;
    if (bucket >= e->page_bucketcount)
        return ret;

    pthread_mutex_lock(&e->mutex);
    p = e->page_buckets[bucket];
    if (!p) {
        p = _allocate_page(e, bucket, free_bucket);
    }
    pthread_mutex_unlock(&e->mutex);
    if (!p)
        return ret;

    pthread_mutex_lock(&p->mutex);



    if (!p->active ||
            ((!p->wbuf || p->wbuf->full) && p->allocated >= e->page_size)) {
        pthread_mutex_unlock(&p->mutex);
        pthread_mutex_lock(&e->mutex);
        _allocate_page(e, bucket, free_bucket);
        pthread_mutex_unlock(&e->mutex);
        return ret;
    }


    if (p->wbuf && p->wbuf->free < io->len && !p->wbuf->full) {
        _submit_wbuf(e, p);
        p->wbuf->full = 1;
    }

    if (!p->wbuf && p->allocated < e->page_size) {
        _allocate_wbuf(e, p);
    }



    if (p->wbuf && !p->wbuf->full && p->wbuf->free >= io->len) {
        io->buf = p->wbuf->buf_pos;
        io->page_id = p->id;
        return 0;
    }

    pthread_mutex_unlock(&p->mutex);

    return ret;
}
