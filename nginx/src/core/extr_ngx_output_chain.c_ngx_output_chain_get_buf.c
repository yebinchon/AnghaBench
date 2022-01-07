
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ off_t ;
typedef int ngx_uint_t ;
struct TYPE_8__ {size_t size; int num; } ;
struct TYPE_9__ {int allocated; TYPE_4__* buf; int tag; int pool; scalar_t__ alignment; scalar_t__ directio; TYPE_2__ bufs; TYPE_1__* in; } ;
typedef TYPE_3__ ngx_output_chain_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int temporary; int recycled; int tag; int * last; int * end; int * start; int * pos; scalar_t__ last_in_chain; } ;
typedef TYPE_4__ ngx_buf_t ;
struct TYPE_7__ {TYPE_4__* buf; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_4__* ngx_calloc_buf (int ) ;
 int * ngx_palloc (int ,size_t) ;
 int * ngx_pmemalign (int ,size_t,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_output_chain_get_buf(ngx_output_chain_ctx_t *ctx, off_t bsize)
{
    size_t size;
    ngx_buf_t *b, *in;
    ngx_uint_t recycled;

    in = ctx->in->buf;
    size = ctx->bufs.size;
    recycled = 1;

    if (in->last_in_chain) {

        if (bsize < (off_t) size) {






            size = (size_t) bsize;
            recycled = 0;

        } else if (!ctx->directio
                   && ctx->bufs.num == 1
                   && (bsize < (off_t) (size + size / 4)))
        {






            size = (size_t) bsize;
            recycled = 0;
        }
    }

    b = ngx_calloc_buf(ctx->pool);
    if (b == ((void*)0)) {
        return NGX_ERROR;
    }

    if (ctx->directio) {






        b->start = ngx_pmemalign(ctx->pool, size, (size_t) ctx->alignment);
        if (b->start == ((void*)0)) {
            return NGX_ERROR;
        }

    } else {
        b->start = ngx_palloc(ctx->pool, size);
        if (b->start == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    b->pos = b->start;
    b->last = b->start;
    b->end = b->last + size;
    b->temporary = 1;
    b->tag = ctx->tag;
    b->recycled = recycled;

    ctx->buf = b;
    ctx->allocated++;

    return NGX_OK;
}
