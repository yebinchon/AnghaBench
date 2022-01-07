
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_9__ {TYPE_3__* free_raw_bufs; TYPE_1__* buf_to_file; int pool; } ;
typedef TYPE_2__ ngx_event_pipe_t ;
struct TYPE_10__ {struct TYPE_10__* next; TYPE_4__* buf; } ;
typedef TYPE_3__ ngx_chain_t ;
struct TYPE_11__ {scalar_t__ start; scalar_t__ pos; scalar_t__ last; int * shadow; } ;
typedef TYPE_4__ ngx_buf_t ;
struct TYPE_8__ {scalar_t__ start; scalar_t__ last; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_3__* ngx_alloc_chain_link (int ) ;

ngx_int_t
ngx_event_pipe_add_free_buf(ngx_event_pipe_t *p, ngx_buf_t *b)
{
    ngx_chain_t *cl;

    cl = ngx_alloc_chain_link(p->pool);
    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    if (p->buf_to_file && b->start == p->buf_to_file->start) {
        b->pos = p->buf_to_file->last;
        b->last = p->buf_to_file->last;

    } else {
        b->pos = b->start;
        b->last = b->start;
    }

    b->shadow = ((void*)0);

    cl->buf = b;

    if (p->free_raw_bufs == ((void*)0)) {
        p->free_raw_bufs = cl;
        cl->next = ((void*)0);

        return NGX_OK;
    }

    if (p->free_raw_bufs->buf->pos == p->free_raw_bufs->buf->last) {



        cl->next = p->free_raw_bufs;
        p->free_raw_bufs = cl;

        return NGX_OK;
    }



    cl->next = p->free_raw_bufs->next;
    p->free_raw_bufs->next = cl;

    return NGX_OK;
}
