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
struct demux_stream {double back_seek_pos; } ;
struct demux_internal {int seeking; int eof; int idle; int reading; int back_demuxing; int seek_flags; double seek_pts; int num_streams; int /*<<< orphan*/  threading; TYPE_2__** streams; TYPE_1__* d_thread; } ;
struct demux_cached_range {int dummy; } ;
struct TYPE_4__ {struct demux_stream* ds; } ;
struct TYPE_3__ {int /*<<< orphan*/  seekable; } ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct demux_internal*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_internal*,char*) ; 
 int SEEK_CACHED ; 
 int SEEK_FORCE ; 
 int SEEK_SATAN ; 
 int /*<<< orphan*/  FUNC2 (struct demux_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct demux_internal*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct demux_internal*,struct demux_cached_range*,double,int) ; 
 int /*<<< orphan*/  FUNC5 (struct demux_internal*) ; 
 struct demux_cached_range* FUNC6 (struct demux_internal*,double,int) ; 
 int /*<<< orphan*/  FUNC7 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC8 (struct demux_stream*) ; 

__attribute__((used)) static bool FUNC9(struct demux_internal *in, double seek_pts, int flags,
                       bool clear_back_state)
{
    if (seek_pts == MP_NOPTS_VALUE)
        return false;

    FUNC0(in, "queuing seek to %f%s\n", seek_pts,
               in->seeking ? " (cascade)" : "");

    bool require_cache = flags & SEEK_CACHED;
    flags &= ~(unsigned)SEEK_CACHED;

    bool set_backwards = flags & SEEK_SATAN;
    flags &= ~(unsigned)SEEK_SATAN;

    bool force_seek = flags & SEEK_FORCE;
    flags &= ~(unsigned)SEEK_FORCE;

    struct demux_cached_range *cache_target =
        FUNC6(in, seek_pts, flags);

    if (!cache_target) {
        if (require_cache) {
            FUNC0(in, "Cached seek not possible.\n");
            return false;
        }
        if (!in->d_thread->seekable && !force_seek) {
            FUNC1(in, "Cannot seek in this file.\n");
            return false;
        }
    }

    in->eof = false;
    in->idle = true;
    in->reading = false;
    in->back_demuxing = set_backwards;

    FUNC3(in, clear_back_state);

    if (cache_target) {
        FUNC4(in, cache_target, seek_pts, flags);
    } else {
        FUNC7(in);

        in->seeking = true;
        in->seek_flags = flags;
        in->seek_pts = seek_pts;
    }

    for (int n = 0; n < in->num_streams; n++) {
        struct demux_stream *ds = in->streams[n]->ds;

        if (in->back_demuxing) {
            if (ds->back_seek_pos == MP_NOPTS_VALUE)
                ds->back_seek_pos = seek_pts;
            // Process possibly cached packets.
            FUNC2(in->streams[n]->ds);
        }

        FUNC8(ds);
    }

    if (!in->threading && in->seeking)
        FUNC5(in);

    return true;
}