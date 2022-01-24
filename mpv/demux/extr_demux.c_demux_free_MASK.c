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
struct demux_internal {struct demuxer* d_user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC2 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC3 (struct demuxer*) ; 

void FUNC4(struct demuxer *demuxer)
{
    if (!demuxer)
        return;
    struct demux_internal *in = demuxer->in;
    FUNC0(demuxer == in->d_user);

    FUNC3(demuxer);
    FUNC2(in);
    FUNC1(in);
}