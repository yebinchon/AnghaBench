#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct TYPE_10__ {int len; char* data; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_11__ {int valid; scalar_t__ len; int /*<<< orphan*/ * data; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
typedef  TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_12__ {TYPE_1__ timefmt; } ;
typedef  TYPE_3__ ngx_http_ssi_ctx_t ;
struct TYPE_13__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_4__ ngx_http_request_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int NGX_HTTP_SSI_DATE_LEN ; 
 int /*<<< orphan*/  NGX_OK ; 
 scalar_t__ NGX_TIME_T_LEN ; 
 TYPE_3__* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_ssi_filter_module ; 
 TYPE_1__ ngx_http_ssi_timefmt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 void* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (char*,int,char*,struct tm*) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t gmt)
{
    time_t               now;
    ngx_http_ssi_ctx_t  *ctx;
    ngx_str_t           *timefmt;
    struct tm            tm;
    char                 buf[NGX_HTTP_SSI_DATE_LEN];

    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    now = FUNC6();

    ctx = FUNC0(r, ngx_http_ssi_filter_module);

    timefmt = ctx ? &ctx->timefmt : &ngx_http_ssi_timefmt;

    if (timefmt->len == sizeof("%s") - 1
        && timefmt->data[0] == '%' && timefmt->data[1] == 's')
    {
        v->data = FUNC4(r->pool, NGX_TIME_T_LEN);
        if (v->data == NULL) {
            return NGX_ERROR;
        }

        v->len = FUNC5(v->data, "%T", now) - v->data;

        return NGX_OK;
    }

    if (gmt) {
        FUNC1(now, &tm);
    } else {
        FUNC2(now, &tm);
    }

    v->len = FUNC7(buf, NGX_HTTP_SSI_DATE_LEN,
                      (char *) timefmt->data, &tm);
    if (v->len == 0) {
        return NGX_ERROR;
    }

    v->data = FUNC4(r->pool, v->len);
    if (v->data == NULL) {
        return NGX_ERROR;
    }

    FUNC3(v->data, buf, v->len);

    return NGX_OK;
}