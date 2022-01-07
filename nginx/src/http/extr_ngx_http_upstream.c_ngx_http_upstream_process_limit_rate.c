
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_11__ {int len; int data; } ;
struct TYPE_12__ {TYPE_3__ value; } ;
typedef TYPE_4__ ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_9__ {TYPE_4__* x_accel_limit_rate; } ;
struct TYPE_13__ {TYPE_2__* conf; TYPE_1__ headers_in; } ;
typedef TYPE_5__ ngx_http_upstream_t ;
struct TYPE_14__ {size_t limit_rate; int limit_rate_set; TYPE_5__* upstream; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_10__ {int ignore_headers; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_UPSTREAM_IGN_XA_LIMIT_RATE ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_atoi (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_process_limit_rate(ngx_http_request_t *r, ngx_table_elt_t *h,
    ngx_uint_t offset)
{
    ngx_int_t n;
    ngx_http_upstream_t *u;

    u = r->upstream;
    u->headers_in.x_accel_limit_rate = h;

    if (u->conf->ignore_headers & NGX_HTTP_UPSTREAM_IGN_XA_LIMIT_RATE) {
        return NGX_OK;
    }

    n = ngx_atoi(h->value.data, h->value.len);

    if (n != NGX_ERROR) {
        r->limit_rate = (size_t) n;
        r->limit_rate_set = 1;
    }

    return NGX_OK;
}
