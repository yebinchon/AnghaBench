#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sh_stream {int /*<<< orphan*/  index; TYPE_1__* ds; } ;
struct demux_internal {int /*<<< orphan*/  lock; int /*<<< orphan*/  ts_offset; } ;
struct TYPE_7__ {int keyframe; int /*<<< orphan*/  stream; void* dts; void* pts; } ;
typedef  TYPE_2__ demux_packet_t ;
struct TYPE_6__ {struct demux_internal* in; } ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_stream*,TYPE_2__*) ; 
 struct sh_stream* FUNC2 (struct sh_stream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(struct sh_stream *stream, demux_packet_t *dp)
{
    struct demux_internal *in = stream->ds->in;

    FUNC3(&in->lock);
    struct sh_stream *sh = FUNC2(stream);
    if (!sh) {
        FUNC4(&in->lock);
        FUNC5(dp);
        return;
    }

    dp->keyframe = true;
    dp->pts = FUNC0(dp->pts, -in->ts_offset);
    dp->dts = FUNC0(dp->dts, -in->ts_offset);
    dp->stream = sh->index;
    FUNC1(sh, dp);
    FUNC4(&in->lock);
}