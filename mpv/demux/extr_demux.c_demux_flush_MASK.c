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
struct demux_internal {int num_ranges; int /*<<< orphan*/  lock; int /*<<< orphan*/ * ranges; TYPE_1__* d_user; } ;
struct TYPE_3__ {struct demux_internal* in; } ;
typedef  TYPE_1__ demuxer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_internal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct demux_internal*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(demuxer_t *demuxer)
{
    struct demux_internal *in = demuxer->in;
    FUNC0(demuxer == in->d_user);

    FUNC4(&demuxer->in->lock);
    FUNC2(in, true);
    for (int n = 0; n < in->num_ranges; n++)
        FUNC1(in, in->ranges[n]);
    FUNC3(in);
    FUNC5(&demuxer->in->lock);
}