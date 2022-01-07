
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_9__ {int length; TYPE_2__** last_in; TYPE_2__* in; int log; int tag; int free; int pool; } ;
typedef TYPE_1__ ngx_event_pipe_t ;
struct TYPE_10__ {struct TYPE_10__* next; TYPE_3__* buf; } ;
typedef TYPE_2__ ngx_chain_t ;
struct TYPE_11__ {scalar_t__ pos; scalar_t__ last; int last_shadow; int recycled; int num; struct TYPE_11__* shadow; int tag; } ;
typedef TYPE_3__ ngx_buf_t ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_OK ;
 TYPE_2__* ngx_chain_get_free_buf (int ,int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_memcpy (TYPE_3__*,TYPE_3__*,int) ;

ngx_int_t
ngx_event_pipe_copy_input_filter(ngx_event_pipe_t *p, ngx_buf_t *buf)
{
    ngx_buf_t *b;
    ngx_chain_t *cl;

    if (buf->pos == buf->last) {
        return NGX_OK;
    }

    cl = ngx_chain_get_free_buf(p->pool, &p->free);
    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    b = cl->buf;

    ngx_memcpy(b, buf, sizeof(ngx_buf_t));
    b->shadow = buf;
    b->tag = p->tag;
    b->last_shadow = 1;
    b->recycled = 1;
    buf->shadow = b;

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, p->log, 0, "input buf #%d", b->num);

    if (p->in) {
        *p->last_in = cl;
    } else {
        p->in = cl;
    }
    p->last_in = &cl->next;

    if (p->length == -1) {
        return NGX_OK;
    }

    p->length -= b->last - b->pos;

    return NGX_OK;
}
