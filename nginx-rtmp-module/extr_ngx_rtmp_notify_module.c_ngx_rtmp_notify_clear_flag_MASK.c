#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ngx_rtmp_notify_ctx_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_notify_module ; 

__attribute__((used)) static void
FUNC1(ngx_rtmp_session_t *s, ngx_uint_t flag)
{
    ngx_rtmp_notify_ctx_t  *ctx;

    ctx = FUNC0(s, ngx_rtmp_notify_module);

    ctx->flags &= ~flag;
}