#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/ * tree; int /*<<< orphan*/ * tree6; int /*<<< orphan*/  pool; } ;
typedef  TYPE_5__ ngx_stream_geo_conf_ctx_t ;
struct TYPE_24__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_6__ ngx_str_t ;
typedef  int ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_in6_cidr_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;
struct TYPE_21__ {void* mask; void* addr; } ;
struct TYPE_20__ {int /*<<< orphan*/  s6_addr; } ;
struct TYPE_19__ {int /*<<< orphan*/  s6_addr; } ;
struct TYPE_18__ {TYPE_2__ mask; TYPE_1__ addr; } ;
struct TYPE_22__ {TYPE_3__ in; TYPE_16__ in6; } ;
struct TYPE_25__ {int family; TYPE_4__ u; } ;
typedef  TYPE_7__ ngx_cidr_t ;

/* Variables and functions */
 int AF_INET ; 
#define  AF_INET6 128 
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_WARN ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_16__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_7__*,TYPE_6__*,TYPE_6__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_6__*,TYPE_7__*) ; 
 void* FUNC8 (void*) ; 

__attribute__((used)) static char *
FUNC9(ngx_conf_t *cf, ngx_stream_geo_conf_ctx_t *ctx,
    ngx_str_t *value)
{
    char        *rv;
    ngx_int_t    rc, del;
    ngx_str_t   *net;
    ngx_cidr_t   cidr;

    if (ctx->tree == NULL) {
        ctx->tree = FUNC4(ctx->pool, -1);
        if (ctx->tree == NULL) {
            return NGX_CONF_ERROR;
        }
    }

#if (NGX_HAVE_INET6)
    if (ctx->tree6 == NULL) {
        ctx->tree6 = ngx_radix_tree_create(ctx->pool, -1);
        if (ctx->tree6 == NULL) {
            return NGX_CONF_ERROR;
        }
    }
#endif

    if (FUNC5(value[0].data, "default") == 0) {
        cidr.family = AF_INET;
        cidr.u.in.addr = 0;
        cidr.u.in.mask = 0;

        rv = FUNC6(cf, ctx, &cidr, &value[1], &value[0]);

        if (rv != NGX_CONF_OK) {
            return rv;
        }

#if (NGX_HAVE_INET6)
        cidr.family = AF_INET6;
        ngx_memzero(&cidr.u.in6, sizeof(ngx_in6_cidr_t));

        rv = ngx_stream_geo_cidr_add(cf, ctx, &cidr, &value[1], &value[0]);

        if (rv != NGX_CONF_OK) {
            return rv;
        }
#endif

        return NGX_CONF_OK;
    }

    if (FUNC5(value[0].data, "delete") == 0) {
        net = &value[1];
        del = 1;

    } else {
        net = &value[0];
        del = 0;
    }

    if (FUNC7(cf, net, &cidr) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    if (cidr.family == AF_INET) {
        cidr.u.in.addr = FUNC8(cidr.u.in.addr);
        cidr.u.in.mask = FUNC8(cidr.u.in.mask);
    }

    if (del) {
        switch (cidr.family) {

#if (NGX_HAVE_INET6)
        case AF_INET6:
            rc = ngx_radix128tree_delete(ctx->tree6,
                                         cidr.u.in6.addr.s6_addr,
                                         cidr.u.in6.mask.s6_addr);
            break;
#endif

        default: /* AF_INET */
            rc = FUNC3(ctx->tree, cidr.u.in.addr,
                                        cidr.u.in.mask);
            break;
        }

        if (rc != NGX_OK) {
            FUNC0(NGX_LOG_WARN, cf, 0,
                               "no network \"%V\" to delete", net);
        }

        return NGX_CONF_OK;
    }

    return FUNC6(cf, ctx, &cidr, &value[1], net);
}