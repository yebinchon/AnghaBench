#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* mpctx; } ;
typedef  TYPE_2__ mpv_handle ;
struct TYPE_6__ {int /*<<< orphan*/  mconfig; } ;

/* Variables and functions */
 int MPV_ERROR_INVALID_PARAMETER ; 
 int MPV_ERROR_OPTION_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(mpv_handle *ctx, const char *filename)
{
    FUNC0(ctx);
    int r = FUNC1(ctx->mpctx->mconfig, filename, NULL, 0);
    FUNC2(ctx);
    if (r == 0)
        return MPV_ERROR_INVALID_PARAMETER;
    if (r < 0)
        return MPV_ERROR_OPTION_ERROR;
    return 0;
}