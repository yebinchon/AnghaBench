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
struct timespec {int dummy; } ;
struct demux_internal {int shutdown_async; int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeup_cb_ctx; int /*<<< orphan*/  (* wakeup_cb ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  wakeup; int /*<<< orphan*/  next_cache_update; int /*<<< orphan*/  thread_terminate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demux_internal*) ; 
 struct timespec FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct demux_internal*) ; 

__attribute__((used)) static void *FUNC9(void *pctx)
{
    struct demux_internal *in = pctx;
    FUNC2("demux");
    FUNC5(&in->lock);

    while (!in->thread_terminate) {
        if (FUNC8(in))
            continue;
        FUNC3(&in->wakeup);
        struct timespec until = FUNC1(in->next_cache_update);
        FUNC4(&in->wakeup, &in->lock, &until);
    }

    if (in->shutdown_async) {
        FUNC6(&in->lock);
        FUNC0(in);
        FUNC5(&in->lock);
        in->shutdown_async = false;
        if (in->wakeup_cb)
            in->wakeup_cb(in->wakeup_cb_ctx);
    }

    FUNC6(&in->lock);
    return NULL;
}