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
typedef  int /*<<< orphan*/  uint64_t ;
struct mpv_handle {scalar_t__ reserved_events; int /*<<< orphan*/  lock; } ;
struct mpv_event {int /*<<< orphan*/  reply_userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct mpv_handle*,struct mpv_event,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mpv_handle *ctx, uint64_t userdata,
                       struct mpv_event *event)
{
    event->reply_userdata = userdata;
    FUNC3(&ctx->lock);
    // If this fails, reserve_reply() probably wasn't called.
    FUNC2(ctx->reserved_events > 0);
    ctx->reserved_events--;
    if (FUNC1(ctx, *event, false) < 0)
        FUNC0(); // not reached
    FUNC4(&ctx->lock);
}