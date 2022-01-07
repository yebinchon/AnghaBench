
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {int * elts; } ;
struct TYPE_10__ {TYPE_5__ cookies; } ;
struct TYPE_11__ {scalar_t__ cacheable; TYPE_1__* conf; TYPE_2__ headers_in; } ;
typedef TYPE_3__ ngx_http_upstream_t ;
struct TYPE_12__ {int pool; TYPE_3__* upstream; } ;
typedef TYPE_4__ ngx_http_request_t ;
typedef TYPE_5__ ngx_array_t ;
struct TYPE_9__ {int ignore_headers; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_UPSTREAM_IGN_SET_COOKIE ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (TYPE_5__*,int ,int,int) ;
 int ** ngx_array_push (TYPE_5__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_process_set_cookie(ngx_http_request_t *r, ngx_table_elt_t *h,
    ngx_uint_t offset)
{
    ngx_array_t *pa;
    ngx_table_elt_t **ph;
    ngx_http_upstream_t *u;

    u = r->upstream;
    pa = &u->headers_in.cookies;

    if (pa->elts == ((void*)0)) {
        if (ngx_array_init(pa, r->pool, 1, sizeof(ngx_table_elt_t *)) != NGX_OK)
        {
            return NGX_ERROR;
        }
    }

    ph = ngx_array_push(pa);
    if (ph == ((void*)0)) {
        return NGX_ERROR;
    }

    *ph = h;







    return NGX_OK;
}
