#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct demuxer {struct demux_internal* in; } ;
struct demux_internal {int blocked; int num_streams; int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeup; TYPE_1__** streams; struct demuxer* d_user; } ;
struct TYPE_4__ {int need_wakeup; } ;
struct TYPE_3__ {TYPE_2__* ds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(struct demuxer *demuxer, bool block)
{
    struct demux_internal *in = demuxer->in;
    FUNC0(demuxer == in->d_user);

    FUNC2(&in->lock);
    in->blocked = block;
    for (int n = 0; n < in->num_streams; n++) {
        in->streams[n]->ds->need_wakeup = true;
        FUNC4(in->streams[n]->ds);
    }
    FUNC1(&in->wakeup);
    FUNC3(&in->lock);
}