
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_22__ {int data; } ;
typedef TYPE_5__ ngx_str_t ;
typedef int ngx_int_t ;
typedef int ngx_in6_cidr_t ;
struct TYPE_23__ {int * tree; int * tree6; int pool; } ;
typedef TYPE_6__ ngx_http_geo_conf_ctx_t ;
typedef int ngx_conf_t ;
struct TYPE_20__ {void* mask; void* addr; } ;
struct TYPE_19__ {int s6_addr; } ;
struct TYPE_18__ {int s6_addr; } ;
struct TYPE_25__ {TYPE_2__ mask; TYPE_1__ addr; } ;
struct TYPE_21__ {TYPE_3__ in; TYPE_8__ in6; } ;
struct TYPE_24__ {int family; TYPE_4__ u; } ;
typedef TYPE_7__ ngx_cidr_t ;


 int AF_INET ;

 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_WARN ;
 scalar_t__ NGX_OK ;
 int ngx_conf_log_error (int ,int *,int ,char*,TYPE_5__*) ;
 char* ngx_http_geo_cidr_add (int *,TYPE_6__*,TYPE_7__*,TYPE_5__*,TYPE_5__*) ;
 scalar_t__ ngx_http_geo_cidr_value (int *,TYPE_5__*,TYPE_7__*) ;
 int ngx_memzero (TYPE_8__*,int) ;
 int ngx_radix128tree_delete (int *,int ,int ) ;
 int ngx_radix32tree_delete (int *,void*,void*) ;
 void* ngx_radix_tree_create (int ,int) ;
 scalar_t__ ngx_strcmp (int ,char*) ;
 void* ntohl (void*) ;

__attribute__((used)) static char *
ngx_http_geo_cidr(ngx_conf_t *cf, ngx_http_geo_conf_ctx_t *ctx,
    ngx_str_t *value)
{
    char *rv;
    ngx_int_t rc, del;
    ngx_str_t *net;
    ngx_cidr_t cidr;

    if (ctx->tree == ((void*)0)) {
        ctx->tree = ngx_radix_tree_create(ctx->pool, -1);
        if (ctx->tree == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }
    if (ngx_strcmp(value[0].data, "default") == 0) {
        cidr.family = AF_INET;
        cidr.u.in.addr = 0;
        cidr.u.in.mask = 0;

        rv = ngx_http_geo_cidr_add(cf, ctx, &cidr, &value[1], &value[0]);

        if (rv != NGX_CONF_OK) {
            return rv;
        }
        return NGX_CONF_OK;
    }

    if (ngx_strcmp(value[0].data, "delete") == 0) {
        net = &value[1];
        del = 1;

    } else {
        net = &value[0];
        del = 0;
    }

    if (ngx_http_geo_cidr_value(cf, net, &cidr) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    if (cidr.family == AF_INET) {
        cidr.u.in.addr = ntohl(cidr.u.in.addr);
        cidr.u.in.mask = ntohl(cidr.u.in.mask);
    }

    if (del) {
        switch (cidr.family) {
        default:
            rc = ngx_radix32tree_delete(ctx->tree, cidr.u.in.addr,
                                        cidr.u.in.mask);
            break;
        }

        if (rc != NGX_OK) {
            ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                               "no network \"%V\" to delete", net);
        }

        return NGX_CONF_OK;
    }

    return ngx_http_geo_cidr_add(cf, ctx, &cidr, &value[1], net);
}
