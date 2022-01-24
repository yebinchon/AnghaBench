#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_17__ {int /*<<< orphan*/  pool; TYPE_1__* connection; struct TYPE_17__* main; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_18__ {scalar_t__ request_body; int /*<<< orphan*/ * mirror; } ;
typedef  TYPE_3__ ngx_http_mirror_loc_conf_t ;
struct TYPE_19__ {scalar_t__ status; } ;
typedef  TYPE_4__ ngx_http_mirror_ctx_t ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_DECLINED ; 
 scalar_t__ NGX_DONE ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 TYPE_4__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_mirror_body_handler ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  ngx_http_mirror_module ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_http_request_t *r)
{
    ngx_int_t                    rc;
    ngx_http_mirror_ctx_t       *ctx;
    ngx_http_mirror_loc_conf_t  *mlcf;

    if (r != r->main) {
        return NGX_DECLINED;
    }

    mlcf = FUNC2(r, ngx_http_mirror_module);

    if (mlcf->mirror == NULL) {
        return NGX_DECLINED;
    }

    FUNC6(NGX_LOG_DEBUG_HTTP, r->connection->log, 0, "mirror handler");

    if (mlcf->request_body) {
        ctx = FUNC1(r, ngx_http_mirror_module);

        if (ctx) {
            return ctx->status;
        }

        ctx = FUNC7(r->pool, sizeof(ngx_http_mirror_ctx_t));
        if (ctx == NULL) {
            return NGX_ERROR;
        }

        ctx->status = NGX_DONE;

        FUNC5(r, ctx, ngx_http_mirror_module);

        rc = FUNC4(r, ngx_http_mirror_body_handler);
        if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
            return rc;
        }

        FUNC0(r, NGX_DONE);
        return NGX_DONE;
    }

    return FUNC3(r);
}