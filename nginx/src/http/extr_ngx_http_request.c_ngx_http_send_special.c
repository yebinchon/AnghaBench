
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int post_action; struct TYPE_8__* main; int pool; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_9__ {int * next; TYPE_3__* buf; } ;
typedef TYPE_2__ ngx_chain_t ;
struct TYPE_10__ {int last_buf; int sync; int last_in_chain; int flush; } ;
typedef TYPE_3__ ngx_buf_t ;


 int NGX_ERROR ;
 int NGX_HTTP_FLUSH ;
 int NGX_HTTP_LAST ;
 TYPE_3__* ngx_calloc_buf (int ) ;
 int ngx_http_output_filter (TYPE_1__*,TYPE_2__*) ;

ngx_int_t
ngx_http_send_special(ngx_http_request_t *r, ngx_uint_t flags)
{
    ngx_buf_t *b;
    ngx_chain_t out;

    b = ngx_calloc_buf(r->pool);
    if (b == ((void*)0)) {
        return NGX_ERROR;
    }

    if (flags & NGX_HTTP_LAST) {

        if (r == r->main && !r->post_action) {
            b->last_buf = 1;

        } else {
            b->sync = 1;
            b->last_in_chain = 1;
        }
    }

    if (flags & NGX_HTTP_FLUSH) {
        b->flush = 1;
    }

    out.buf = b;
    out.next = ((void*)0);

    return ngx_http_output_filter(r, &out);
}
