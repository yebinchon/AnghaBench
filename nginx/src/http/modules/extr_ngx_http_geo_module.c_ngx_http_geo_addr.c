
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {scalar_t__ nelts; } ;
struct TYPE_11__ {TYPE_4__ x_forwarded_for; } ;
struct TYPE_12__ {TYPE_1__ headers_in; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_13__ {int proxy_recursive; int * proxies; } ;
typedef TYPE_3__ ngx_http_geo_ctx_t ;
typedef TYPE_4__ ngx_array_t ;
typedef int ngx_addr_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_geo_real_addr (TYPE_2__*,TYPE_3__*,int *) ;
 int ngx_http_get_forwarded_addr (TYPE_2__*,int *,TYPE_4__*,int *,int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_geo_addr(ngx_http_request_t *r, ngx_http_geo_ctx_t *ctx,
    ngx_addr_t *addr)
{
    ngx_array_t *xfwd;

    if (ngx_http_geo_real_addr(r, ctx, addr) != NGX_OK) {
        return NGX_ERROR;
    }

    xfwd = &r->headers_in.x_forwarded_for;

    if (xfwd->nelts > 0 && ctx->proxies != ((void*)0)) {
        (void) ngx_http_get_forwarded_addr(r, addr, xfwd, ((void*)0),
                                           ctx->proxies, ctx->proxy_recursive);
    }

    return NGX_OK;
}
