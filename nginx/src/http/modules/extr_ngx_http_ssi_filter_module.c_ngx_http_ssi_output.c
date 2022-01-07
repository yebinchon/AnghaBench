
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_18__ {TYPE_5__* free; TYPE_5__* busy; TYPE_5__* out; TYPE_5__** last_out; } ;
typedef TYPE_3__ ngx_http_ssi_ctx_t ;
struct TYPE_19__ {TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_20__ {struct TYPE_20__* next; TYPE_6__* buf; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_21__ {scalar_t__ in_file; TYPE_2__* shadow; int pos; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_17__ {int last; int pos; } ;
struct TYPE_16__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ ngx_buf_in_memory (TYPE_6__*) ;
 scalar_t__ ngx_buf_size (TYPE_6__*) ;
 int ngx_debug_point () ;
 int ngx_http_next_body_filter (TYPE_4__*,TYPE_5__*) ;
 int ngx_http_ssi_buffered (TYPE_4__*,TYPE_3__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_6__*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_ssi_output(ngx_http_request_t *r, ngx_http_ssi_ctx_t *ctx)
{
    ngx_int_t rc;
    ngx_buf_t *b;
    ngx_chain_t *cl;


    b = ((void*)0);
    for (cl = ctx->out; cl; cl = cl->next) {
        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "ssi out: %p %p", cl->buf, cl->buf->pos);
        if (cl->buf == b) {
            ngx_log_error(NGX_LOG_ALERT, r->connection->log, 0,
                          "the same buf was used in ssi");
            ngx_debug_point();
            return NGX_ERROR;
        }
        b = cl->buf;
    }


    rc = ngx_http_next_body_filter(r, ctx->out);

    if (ctx->busy == ((void*)0)) {
        ctx->busy = ctx->out;

    } else {
        for (cl = ctx->busy; cl->next; cl = cl->next) { }
        cl->next = ctx->out;
    }

    ctx->out = ((void*)0);
    ctx->last_out = &ctx->out;

    while (ctx->busy) {

        cl = ctx->busy;
        b = cl->buf;

        if (ngx_buf_size(b) != 0) {
            break;
        }

        if (b->shadow) {
            b->shadow->pos = b->shadow->last;
        }

        ctx->busy = cl->next;

        if (ngx_buf_in_memory(b) || b->in_file) {


            cl->next = ctx->free;
            ctx->free = cl;
        }
    }

    ngx_http_ssi_buffered(r, ctx);

    return rc;
}
