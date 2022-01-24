#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  relay; } ;
typedef  TYPE_1__ ngx_rtmp_session_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_relay_ctx_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_header_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_relay_module ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static ngx_int_t
FUNC2(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
        ngx_chain_t *in)
{
    ngx_rtmp_relay_ctx_t   *ctx;

    ctx = FUNC0(s, ngx_rtmp_relay_module);
    if (ctx == NULL || !s->relay) {
        return NGX_OK;
    }

    return FUNC1(s);
}