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
typedef  int uint64_t ;
struct TYPE_3__ {int event_mask; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ mpv_handle ;
typedef  int mpv_event_id ;

/* Variables and functions */
 scalar_t__ INTERNAL_EVENT_BASE ; 
 int MPV_ERROR_INVALID_PARAMETER ; 
 int MPV_EVENT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(mpv_handle *ctx, mpv_event_id event, int enable)
{
    if (!FUNC1(event) || enable < 0 || enable > 1)
        return MPV_ERROR_INVALID_PARAMETER;
    if (event == MPV_EVENT_SHUTDOWN && !enable)
        return MPV_ERROR_INVALID_PARAMETER;
    FUNC0(event < (int)INTERNAL_EVENT_BASE); // excluded above; they have no name
    FUNC2(&ctx->lock);
    uint64_t bit = 1ULL << event;
    ctx->event_mask = enable ? ctx->event_mask | bit : ctx->event_mask & ~bit;
    FUNC3(&ctx->lock);
    return 0;
}