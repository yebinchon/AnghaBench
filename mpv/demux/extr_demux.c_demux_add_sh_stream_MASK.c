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
struct sh_stream {int dummy; } ;
struct demuxer {struct demux_internal* in; } ;
struct demux_internal {int /*<<< orphan*/  lock; struct demuxer* d_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_internal*,struct sh_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct demuxer *demuxer, struct sh_stream *sh)
{
    struct demux_internal *in = demuxer->in;
    FUNC0(demuxer == in->d_thread);
    FUNC2(&in->lock);
    FUNC1(in, sh);
    FUNC3(&in->lock);
}