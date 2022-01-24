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
struct TYPE_5__ {int /*<<< orphan*/  mpctx; } ;
typedef  TYPE_1__ mpv_handle ;

/* Variables and functions */
 int MPV_ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(mpv_handle *ctx)
{
    FUNC0(ctx);
    int res = FUNC1(ctx->mpctx, NULL) ? MPV_ERROR_INVALID_PARAMETER : 0;
    FUNC2(ctx->mpctx);
    FUNC3(ctx);
    return res;
}