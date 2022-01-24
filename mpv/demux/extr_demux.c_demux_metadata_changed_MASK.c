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
struct demux_internal {int /*<<< orphan*/  lock; TYPE_1__* d_thread; } ;
struct TYPE_3__ {int /*<<< orphan*/  metadata; struct demux_internal* in; } ;
typedef  TYPE_1__ demuxer_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct demux_internal*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(demuxer_t *demuxer)
{
    FUNC1(demuxer == demuxer->in->d_thread); // call from demuxer impl. only
    struct demux_internal *in = demuxer->in;

    FUNC2(&in->lock);
    FUNC0(in, demuxer->metadata, NULL, MP_NOPTS_VALUE);
    FUNC3(&in->lock);
}