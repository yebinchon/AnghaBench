#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ ngx_str_t ;
struct TYPE_22__ {int ranges; int proxy_recursive; scalar_t__ tree6; scalar_t__ tree; } ;
typedef  TYPE_3__ ngx_http_geo_conf_ctx_t ;
struct TYPE_23__ {int /*<<< orphan*/  pool; TYPE_1__* args; TYPE_3__* ctx; } ;
typedef  TYPE_4__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
typedef  int /*<<< orphan*/  ngx_cidr_t ;
struct TYPE_20__ {int nelts; TYPE_2__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (TYPE_4__*,TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (TYPE_4__*,TYPE_3__*,TYPE_2__*) ; 
 char* FUNC5 (TYPE_4__*,TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *
FUNC8(ngx_conf_t *cf, ngx_command_t *dummy, void *conf)
{
    char                     *rv;
    ngx_str_t                *value;
    ngx_cidr_t                cidr;
    ngx_http_geo_conf_ctx_t  *ctx;

    ctx = cf->ctx;

    value = cf->args->elts;

    if (cf->args->nelts == 1) {

        if (FUNC7(value[0].data, "ranges") == 0) {

            if (ctx->tree
#if (NGX_HAVE_INET6)
                || ctx->tree6
#endif
               )
            {
                FUNC0(NGX_LOG_EMERG, cf, 0,
                                   "the \"ranges\" directive must be "
                                   "the first directive inside \"geo\" block");
                goto failed;
            }

            ctx->ranges = 1;

            rv = NGX_CONF_OK;

            goto done;
        }

        else if (FUNC7(value[0].data, "proxy_recursive") == 0) {
            ctx->proxy_recursive = 1;
            rv = NGX_CONF_OK;
            goto done;
        }
    }

    if (cf->args->nelts != 2) {
        FUNC0(NGX_LOG_EMERG, cf, 0,
                           "invalid number of the geo parameters");
        goto failed;
    }

    if (FUNC7(value[0].data, "include") == 0) {

        rv = FUNC4(cf, ctx, &value[1]);

        goto done;

    } else if (FUNC7(value[0].data, "proxy") == 0) {

        if (FUNC3(cf, &value[1], &cidr) != NGX_OK) {
            goto failed;
        }

        rv = FUNC1(cf, ctx, &cidr);

        goto done;
    }

    if (ctx->ranges) {
        rv = FUNC5(cf, ctx, value);

    } else {
        rv = FUNC2(cf, ctx, value);
    }

done:

    FUNC6(cf->pool);

    return rv;

failed:

    FUNC6(cf->pool);

    return NGX_CONF_ERROR;
}