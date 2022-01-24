#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* ctx; } ;
typedef  TYPE_1__ ngx_rtmp_live_stream_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_2__ ngx_rtmp_live_ctx_t ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;

/* Variables and functions */
 char const* NGX_CONF_OK ; 
 char* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static const char *
FUNC1(ngx_http_request_t *r,
    ngx_rtmp_live_stream_t *ls)
{
    const char           *s;
    ngx_rtmp_live_ctx_t  *lctx;

    for (lctx = ls->ctx; lctx; lctx = lctx->next) {
        s = FUNC0(r, lctx);
        if (s != NGX_CONF_OK) {
            return s;
        }
    }

    return NGX_CONF_OK;
}