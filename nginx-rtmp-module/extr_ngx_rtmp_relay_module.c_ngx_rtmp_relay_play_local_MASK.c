#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {TYPE_1__ name; } ;
typedef  TYPE_2__ ngx_rtmp_relay_ctx_t ;
struct TYPE_9__ {int silent; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ ngx_rtmp_play_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_rtmp_relay_module ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_rtmp_session_t *s)
{
    ngx_rtmp_play_t             v;
    ngx_rtmp_relay_ctx_t       *ctx;

    ctx = FUNC3(s, ngx_rtmp_relay_module);
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    FUNC1(&v, sizeof(ngx_rtmp_play_t));
    v.silent = 1;
    *(FUNC0(v.name, ctx->name.data,
            FUNC2(sizeof(v.name) - 1, ctx->name.len))) = 0;

    return FUNC4(s, &v);
}