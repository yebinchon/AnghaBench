
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_24__ {TYPE_3__* connection; TYPE_2__* upstream; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_20__ {scalar_t__ size; scalar_t__ length; scalar_t__ state; } ;
struct TYPE_25__ {TYPE_14__ chunked; } ;
typedef TYPE_5__ ngx_http_proxy_ctx_t ;
struct TYPE_26__ {int upstream_done; scalar_t__ length; int log; TYPE_7__** last_in; TYPE_7__* in; int tag; int free; int pool; TYPE_4__* input_ctx; } ;
typedef TYPE_6__ ngx_event_pipe_t ;
struct TYPE_27__ {struct TYPE_27__* next; TYPE_8__* buf; } ;
typedef TYPE_7__ ngx_chain_t ;
struct TYPE_28__ {scalar_t__ pos; scalar_t__ last; int temporary; int recycled; scalar_t__ num; int last_shadow; struct TYPE_28__* shadow; int tag; int end; int start; } ;
typedef TYPE_8__ ngx_buf_t ;
struct TYPE_23__ {int log; } ;
struct TYPE_21__ {int connection_close; } ;
struct TYPE_22__ {int keepalive; TYPE_1__ headers_in; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 TYPE_7__* ngx_chain_get_free_buf (int ,int *) ;
 scalar_t__ ngx_event_pipe_add_free_buf (TYPE_6__*,TYPE_8__*) ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_4__*,int ) ;
 scalar_t__ ngx_http_parse_chunked (TYPE_4__*,TYPE_8__*,TYPE_14__*) ;
 int ngx_http_proxy_module ;
 int ngx_log_debug2 (int ,int ,int ,char*,scalar_t__,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memzero (TYPE_8__*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_chunked_filter(ngx_event_pipe_t *p, ngx_buf_t *buf)
{
    ngx_int_t rc;
    ngx_buf_t *b, **prev;
    ngx_chain_t *cl;
    ngx_http_request_t *r;
    ngx_http_proxy_ctx_t *ctx;

    if (buf->pos == buf->last) {
        return NGX_OK;
    }

    r = p->input_ctx;
    ctx = ngx_http_get_module_ctx(r, ngx_http_proxy_module);

    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    b = ((void*)0);
    prev = &buf->shadow;

    for ( ;; ) {

        rc = ngx_http_parse_chunked(r, buf, &ctx->chunked);

        if (rc == NGX_OK) {



            cl = ngx_chain_get_free_buf(p->pool, &p->free);
            if (cl == ((void*)0)) {
                return NGX_ERROR;
            }

            b = cl->buf;

            ngx_memzero(b, sizeof(ngx_buf_t));

            b->pos = buf->pos;
            b->start = buf->start;
            b->end = buf->end;
            b->tag = p->tag;
            b->temporary = 1;
            b->recycled = 1;

            *prev = b;
            prev = &b->shadow;

            if (p->in) {
                *p->last_in = cl;
            } else {
                p->in = cl;
            }
            p->last_in = &cl->next;

                       b->num = buf->num;

            ngx_log_debug2(NGX_LOG_DEBUG_EVENT, p->log, 0,
                           "input buf #%d %p", b->num, b->pos);

            if (buf->last - buf->pos >= ctx->chunked.size) {

                buf->pos += (size_t) ctx->chunked.size;
                b->last = buf->pos;
                ctx->chunked.size = 0;

                continue;
            }

            ctx->chunked.size -= buf->last - buf->pos;
            buf->pos = buf->last;
            b->last = buf->last;

            continue;
        }

        if (rc == NGX_DONE) {



            p->upstream_done = 1;
            r->upstream->keepalive = !r->upstream->headers_in.connection_close;

            break;
        }

        if (rc == NGX_AGAIN) {



            p->length = ctx->chunked.length;

            break;
        }



        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "upstream sent invalid chunked response");

        return NGX_ERROR;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http proxy chunked state %ui, length %O",
                   ctx->chunked.state, p->length);

    if (b) {
        b->shadow = buf;
        b->last_shadow = 1;

        ngx_log_debug2(NGX_LOG_DEBUG_EVENT, p->log, 0,
                       "input buf %p %z", b->pos, b->last - b->pos);

        return NGX_OK;
    }



    if (ngx_event_pipe_add_free_buf(p, buf) != NGX_OK) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
