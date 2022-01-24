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
struct mpv_handle {scalar_t__ reserved_events; scalar_t__ num_events; scalar_t__ max_events; int /*<<< orphan*/  lock; int /*<<< orphan*/  choked; } ;

/* Variables and functions */
 int MPV_ERROR_EVENT_QUEUE_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mpv_handle *ctx)
{
    int res = MPV_ERROR_EVENT_QUEUE_FULL;
    FUNC0(&ctx->lock);
    if (ctx->reserved_events + ctx->num_events < ctx->max_events && !ctx->choked)
    {
        ctx->reserved_events++;
        res = 0;
    }
    FUNC1(&ctx->lock);
    return res;
}