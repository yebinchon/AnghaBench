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
struct demuxer {struct demux_internal* in; } ;
struct demux_internal {int thread_terminate; int shutdown_async; int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  threading; struct demuxer* d_user; } ;
struct demux_free_async_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct demux_free_async_state *FUNC4(struct demuxer *demuxer)
{
    struct demux_internal *in = demuxer->in;
    FUNC0(demuxer == in->d_user);

    if (!in->threading)
        return NULL;

    FUNC2(&in->lock);
    in->thread_terminate = true;
    in->shutdown_async = true;
    FUNC1(&in->wakeup);
    FUNC3(&in->lock);

    return (struct demux_free_async_state *)demuxer->in; // lies
}