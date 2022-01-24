#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* mpctx; } ;
typedef  TYPE_2__ mpv_handle ;
struct TYPE_4__ {int /*<<< orphan*/  dispatch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(mpv_handle *ctx, void (*fn)(void *fn_data), void *fn_data)
{
    FUNC0(ctx->mpctx->dispatch);
    fn(fn_data);
    FUNC1(ctx->mpctx->dispatch);
}