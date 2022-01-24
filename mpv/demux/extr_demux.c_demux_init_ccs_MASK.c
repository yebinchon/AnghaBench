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
struct sh_stream {scalar_t__ type; } ;
struct demuxer {struct demux_internal* in; } ;
struct demux_opts {int /*<<< orphan*/  create_ccs; } ;
struct demux_internal {int num_streams; int /*<<< orphan*/  lock; struct sh_stream** streams; } ;

/* Variables and functions */
 scalar_t__ STREAM_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct sh_stream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct demuxer *demuxer, struct demux_opts *opts)
{
    struct demux_internal *in = demuxer->in;
    if (!opts->create_ccs)
        return;
    FUNC1(&in->lock);
    for (int n = 0; n < in->num_streams; n++) {
        struct sh_stream *sh = in->streams[n];
        if (sh->type == STREAM_VIDEO)
            FUNC0(sh);
    }
    FUNC2(&in->lock);
}