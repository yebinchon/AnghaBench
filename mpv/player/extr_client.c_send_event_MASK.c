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
typedef  int uint64_t ;
struct mpv_handle {int property_event_masks; int event_mask; int choked; int /*<<< orphan*/  lock; } ;
struct mpv_event {unsigned long long event_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpv_handle*,char*) ; 
 int FUNC1 (struct mpv_handle*,struct mpv_event,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mpv_handle*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mpv_handle *ctx, struct mpv_event *event, bool copy)
{
    FUNC3(&ctx->lock);
    uint64_t mask = 1ULL << event->event_id;
    if (ctx->property_event_masks & mask)
        FUNC2(ctx, mask);
    int r;
    if (!(ctx->event_mask & mask)) {
        r = 0;
    } else if (ctx->choked) {
        r = -1;
    } else {
        r = FUNC1(ctx, *event, copy);
        if (r < 0) {
            FUNC0(ctx, "Too many events queued.\n");
            ctx->choked = true;
        }
    }
    FUNC4(&ctx->lock);
    return r;
}