
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ off_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_12__ {scalar_t__ content_length_n; scalar_t__ chunked; } ;
struct TYPE_13__ {TYPE_2__ headers_in; TYPE_1__* connection; TYPE_4__* request_body; int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_14__ {TYPE_8__* chunked; } ;
typedef TYPE_4__ ngx_http_request_body_t ;
typedef int ngx_http_chunked_t ;
struct TYPE_15__ {size_t last; size_t pos; } ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_16__ {scalar_t__ size; scalar_t__ length; } ;
struct TYPE_11__ {int log; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_HTTP_BAD_REQUEST ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_parse_chunked (TYPE_3__*,TYPE_5__*,TYPE_8__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 void* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_discard_request_body_filter(ngx_http_request_t *r, ngx_buf_t *b)
{
    size_t size;
    ngx_int_t rc;
    ngx_http_request_body_t *rb;

    if (r->headers_in.chunked) {

        rb = r->request_body;

        if (rb == ((void*)0)) {

            rb = ngx_pcalloc(r->pool, sizeof(ngx_http_request_body_t));
            if (rb == ((void*)0)) {
                return NGX_HTTP_INTERNAL_SERVER_ERROR;
            }

            rb->chunked = ngx_pcalloc(r->pool, sizeof(ngx_http_chunked_t));
            if (rb->chunked == ((void*)0)) {
                return NGX_HTTP_INTERNAL_SERVER_ERROR;
            }

            r->request_body = rb;
        }

        for ( ;; ) {

            rc = ngx_http_parse_chunked(r, b, rb->chunked);

            if (rc == NGX_OK) {



                size = b->last - b->pos;

                if ((off_t) size > rb->chunked->size) {
                    b->pos += (size_t) rb->chunked->size;
                    rb->chunked->size = 0;

                } else {
                    rb->chunked->size -= size;
                    b->pos = b->last;
                }

                continue;
            }

            if (rc == NGX_DONE) {



                r->headers_in.content_length_n = 0;
                break;
            }

            if (rc == NGX_AGAIN) {



                r->headers_in.content_length_n = rb->chunked->length;
                break;
            }



            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "client sent invalid chunked body");

            return NGX_HTTP_BAD_REQUEST;
        }

    } else {
        size = b->last - b->pos;

        if ((off_t) size > r->headers_in.content_length_n) {
            b->pos += (size_t) r->headers_in.content_length_n;
            r->headers_in.content_length_n = 0;

        } else {
            b->pos = b->last;
            r->headers_in.content_length_n -= size;
        }
    }

    return NGX_OK;
}
