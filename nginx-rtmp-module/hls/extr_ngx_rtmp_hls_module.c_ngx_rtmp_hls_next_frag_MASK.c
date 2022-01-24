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
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_5__ {scalar_t__ nfrags; int /*<<< orphan*/  frag; } ;
typedef  TYPE_1__ ngx_rtmp_hls_ctx_t ;
struct TYPE_6__ {scalar_t__ winfrags; } ;
typedef  TYPE_2__ ngx_rtmp_hls_app_conf_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_hls_module ; 

__attribute__((used)) static void
FUNC2(ngx_rtmp_session_t *s)
{
    ngx_rtmp_hls_ctx_t         *ctx;
    ngx_rtmp_hls_app_conf_t    *hacf;

    hacf = FUNC0(s, ngx_rtmp_hls_module);
    ctx = FUNC1(s, ngx_rtmp_hls_module);

    if (ctx->nfrags == hacf->winfrags) {
        ctx->frag++;
    } else {
        ctx->nfrags++;
    }
}