#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_13__ {scalar_t__ nelts; } ;
struct TYPE_16__ {int /*<<< orphan*/  types; TYPE_1__ sheets; } ;
typedef  TYPE_4__ ngx_http_xslt_filter_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_http_xslt_filter_ctx_t ;
struct TYPE_15__ {scalar_t__ status; } ;
struct TYPE_17__ {int main_filter_need_in_memory; int /*<<< orphan*/  pool; TYPE_3__ headers_out; TYPE_2__* connection; } ;
typedef  TYPE_5__ ngx_http_request_t ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 scalar_t__ NGX_HTTP_NOT_MODIFIED ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_xslt_filter_module ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_http_request_t *r)
{
    ngx_http_xslt_filter_ctx_t       *ctx;
    ngx_http_xslt_filter_loc_conf_t  *conf;

    FUNC5(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "xslt filter header");

    if (r->headers_out.status == NGX_HTTP_NOT_MODIFIED) {
        return FUNC2(r);
    }

    conf = FUNC1(r, ngx_http_xslt_filter_module);

    if (conf->sheets.nelts == 0
        || FUNC4(r, &conf->types) == NULL)
    {
        return FUNC2(r);
    }

    ctx = FUNC0(r, ngx_http_xslt_filter_module);

    if (ctx) {
        return FUNC2(r);
    }

    ctx = FUNC6(r->pool, sizeof(ngx_http_xslt_filter_ctx_t));
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    FUNC3(r, ctx, ngx_http_xslt_filter_module);

    r->main_filter_need_in_memory = 1;

    return NGX_OK;
}