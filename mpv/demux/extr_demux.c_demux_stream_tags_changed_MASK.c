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
struct sh_stream {struct demux_stream* ds; } ;
struct mp_tags {int dummy; } ;
struct demuxer {struct demux_internal* in; } ;
struct demux_stream {int dummy; } ;
struct demux_internal {int /*<<< orphan*/  lock; struct demuxer* d_thread; } ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct demux_internal*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_internal*,struct mp_tags*,struct sh_stream*,double) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_tags*) ; 

void FUNC6(struct demuxer *demuxer, struct sh_stream *sh,
                               struct mp_tags *tags, double pts)
{
    struct demux_internal *in = demuxer->in;
    FUNC2(demuxer == in->d_thread);
    struct demux_stream *ds = sh ? sh->ds : NULL;
    FUNC2(!sh || ds); // stream must have been added

    FUNC3(&in->lock);

    if (pts == MP_NOPTS_VALUE) {
        FUNC0(in, "Discarding timed metadata without timestamp.\n");
    } else {
        FUNC1(in, tags, sh, pts);
    }
    FUNC5(tags);

    FUNC4(&in->lock);
}