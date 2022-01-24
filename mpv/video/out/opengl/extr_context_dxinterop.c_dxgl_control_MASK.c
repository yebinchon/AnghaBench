#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ra_ctx {int /*<<< orphan*/  vo; } ;

/* Variables and functions */
 int VO_EVENT_RESIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ra_ctx*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int,void*) ; 

__attribute__((used)) static int FUNC2(struct ra_ctx *ctx, int *events, int request,
                             void *arg)
{
    int ret = FUNC1(ctx->vo, events, request, arg);
    if (*events & VO_EVENT_RESIZE)
        FUNC0(ctx);
    return ret;
}