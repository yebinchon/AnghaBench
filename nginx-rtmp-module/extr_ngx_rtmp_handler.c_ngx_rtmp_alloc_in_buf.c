
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t in_chunk_size; int in_pool; } ;
typedef TYPE_1__ ngx_rtmp_session_t ;
struct TYPE_9__ {TYPE_3__* buf; int * next; } ;
typedef TYPE_2__ ngx_chain_t ;
struct TYPE_10__ {int * start; int * end; int * pos; int * last; } ;
typedef TYPE_3__ ngx_buf_t ;


 size_t NGX_RTMP_MAX_CHUNK_HEADER ;
 TYPE_2__* ngx_alloc_chain_link (int ) ;
 TYPE_3__* ngx_calloc_buf (int ) ;
 int * ngx_palloc (int ,size_t) ;

__attribute__((used)) static ngx_chain_t *
ngx_rtmp_alloc_in_buf(ngx_rtmp_session_t *s)
{
    ngx_chain_t *cl;
    ngx_buf_t *b;
    size_t size;

    if ((cl = ngx_alloc_chain_link(s->in_pool)) == ((void*)0)
       || (cl->buf = ngx_calloc_buf(s->in_pool)) == ((void*)0))
    {
        return ((void*)0);
    }

    cl->next = ((void*)0);
    b = cl->buf;
    size = s->in_chunk_size + NGX_RTMP_MAX_CHUNK_HEADER;

    b->start = b->last = b->pos = ngx_palloc(s->in_pool, size);
    if (b->start == ((void*)0)) {
        return ((void*)0);
    }
    b->end = b->start + size;

    return cl;
}
