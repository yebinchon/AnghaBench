
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int ngx_uint_t ;
struct TYPE_11__ {int len; int data; } ;
struct TYPE_14__ {TYPE_2__ value; } ;
typedef TYPE_5__ ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_13__ {TYPE_5__* expires; } ;
struct TYPE_15__ {scalar_t__ cacheable; TYPE_1__* conf; TYPE_4__ headers_in; } ;
typedef TYPE_6__ ngx_http_upstream_t ;
struct TYPE_16__ {TYPE_3__* cache; TYPE_6__* upstream; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_12__ {scalar_t__ valid_sec; } ;
struct TYPE_10__ {int ignore_headers; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_UPSTREAM_IGN_EXPIRES ;
 int NGX_OK ;
 scalar_t__ ngx_parse_http_time (int ,int ) ;
 scalar_t__ ngx_time () ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_process_expires(ngx_http_request_t *r, ngx_table_elt_t *h,
    ngx_uint_t offset)
{
    ngx_http_upstream_t *u;

    u = r->upstream;
    u->headers_in.expires = h;
    return NGX_OK;
}
