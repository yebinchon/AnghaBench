#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_11__ {scalar_t__ len; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_record_app_conf_t ;
struct TYPE_12__ {int /*<<< orphan*/ ** app_conf; } ;
typedef  TYPE_3__ ngx_rtmp_core_app_conf_t ;
struct TYPE_10__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int /*<<< orphan*/  path; TYPE_1__ method; } ;
typedef  TYPE_4__ ngx_rtmp_control_ctx_t ;
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_14__ {size_t ctx_index; } ;

/* Variables and functions */
 char const* NGX_CONF_OK ; 
 scalar_t__ NGX_CONF_UNSET_UINT ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_control_module ; 
 int /*<<< orphan*/  ngx_rtmp_core_module ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_5__ ngx_rtmp_record_module ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static const char *
FUNC7(ngx_http_request_t *r, ngx_rtmp_session_t *s)
{
    ngx_int_t                    rc;
    ngx_str_t                    rec;
    ngx_uint_t                   rn;
    ngx_rtmp_control_ctx_t      *ctx;
    ngx_rtmp_core_app_conf_t    *cacf;
    ngx_rtmp_record_app_conf_t  *racf;

    cacf = FUNC2(s, ngx_rtmp_core_module);
    racf = cacf->app_conf[ngx_rtmp_record_module.ctx_index];

    if (FUNC0(r, (u_char *) "rec", sizeof("rec") - 1, &rec) != NGX_OK) {
        rec.len = 0;
    }

    rn = FUNC4(racf, &rec);
    if (rn == NGX_CONF_UNSET_UINT) {
        return "Recorder not found";
    }

    ctx = FUNC1(r, ngx_rtmp_control_module);

    if (ctx->method.len == sizeof("start") - 1 &&
        FUNC6(ctx->method.data, "start", ctx->method.len) == 0)
    {
        rc = FUNC5(s, rn, &ctx->path);

    } else if (ctx->method.len == sizeof("stop") - 1 &&
               FUNC6(ctx->method.data, "stop", ctx->method.len) == 0)
    {
        rc = FUNC3(s, rn, &ctx->path);

    } else {
        return "Undefined method";
    }

    if (rc == NGX_ERROR) {
        return "Recorder error";
    }

    return NGX_CONF_OK;
}