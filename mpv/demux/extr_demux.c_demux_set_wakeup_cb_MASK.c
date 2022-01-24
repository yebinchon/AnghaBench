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
struct demux_internal {void (* wakeup_cb ) (void*) ;int /*<<< orphan*/  lock; void* wakeup_cb_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct demuxer *demuxer, void (*cb)(void *ctx), void *ctx)
{
    struct demux_internal *in = demuxer->in;
    FUNC0(&in->lock);
    in->wakeup_cb = cb;
    in->wakeup_cb_ctx = ctx;
    FUNC1(&in->lock);
}