
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int off_t ;
typedef int ngx_int_t ;
struct TYPE_15__ {int content_length_n; } ;
struct TYPE_16__ {int pool; int request_body_no_buffering; TYPE_2__ headers_in; TYPE_1__* connection; TYPE_4__* request_body; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {int rest; int busy; int free; } ;
typedef TYPE_4__ ngx_http_request_body_t ;
struct TYPE_18__ {struct TYPE_18__* next; TYPE_6__* buf; } ;
typedef TYPE_5__ ngx_chain_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_19__ {int temporary; size_t start; size_t pos; size_t last; int last_buf; int flush; int end; scalar_t__ tag; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_14__ {int log; } ;


 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 TYPE_5__* ngx_chain_get_free_buf (int ,int *) ;
 int ngx_chain_update_chains (int ,int *,int *,TYPE_5__**,scalar_t__) ;
 int ngx_http_read_client_request_body ;
 int ngx_http_top_request_body_filter (TYPE_3__*,TYPE_5__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_memzero (TYPE_6__*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_request_body_length_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    size_t size;
    ngx_int_t rc;
    ngx_buf_t *b;
    ngx_chain_t *cl, *tl, *out, **ll;
    ngx_http_request_body_t *rb;

    rb = r->request_body;

    if (rb->rest == -1) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "http request body content length filter");

        rb->rest = r->headers_in.content_length_n;
    }

    out = ((void*)0);
    ll = &out;

    for (cl = in; cl; cl = cl->next) {

        if (rb->rest == 0) {
            break;
        }

        tl = ngx_chain_get_free_buf(r->pool, &rb->free);
        if (tl == ((void*)0)) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        b = tl->buf;

        ngx_memzero(b, sizeof(ngx_buf_t));

        b->temporary = 1;
        b->tag = (ngx_buf_tag_t) &ngx_http_read_client_request_body;
        b->start = cl->buf->pos;
        b->pos = cl->buf->pos;
        b->last = cl->buf->last;
        b->end = cl->buf->end;
        b->flush = r->request_body_no_buffering;

        size = cl->buf->last - cl->buf->pos;

        if ((off_t) size < rb->rest) {
            cl->buf->pos = cl->buf->last;
            rb->rest -= size;

        } else {
            cl->buf->pos += (size_t) rb->rest;
            rb->rest = 0;
            b->last = cl->buf->pos;
            b->last_buf = 1;
        }

        *ll = tl;
        ll = &tl->next;
    }

    rc = ngx_http_top_request_body_filter(r, out);

    ngx_chain_update_chains(r->pool, &rb->free, &rb->busy, &out,
                            (ngx_buf_tag_t) &ngx_http_read_client_request_body);

    return rc;
}
