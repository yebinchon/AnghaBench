#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct demuxer {struct demux_internal* in; } ;
struct demux_stream {size_t type; } ;
struct demux_queue {int dummy; } ;
struct demux_packet {struct demux_packet* next; scalar_t__ keyframe; int /*<<< orphan*/  pts; int /*<<< orphan*/  dts; } ;
struct demux_internal {int num_streams; int /*<<< orphan*/  lock; int /*<<< orphan*/  ts_offset; TYPE_1__** streams; struct demuxer* d_user; } ;
struct demux_cached_range {double seek_start; struct demux_queue** streams; } ;
struct TYPE_2__ {struct demux_stream* ds; } ;

/* Variables and functions */
 double FUNC0 (double,int /*<<< orphan*/ ) ; 
 double MP_NOPTS_VALUE ; 
 double FUNC1 (double,double) ; 
 double FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t STREAM_AUDIO ; 
 int STREAM_TYPE_COUNT ; 
 size_t STREAM_VIDEO ; 
 int /*<<< orphan*/  FUNC3 (struct demux_internal*,struct demux_cached_range*,double*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct demux_packet*,double*,int /*<<< orphan*/ *) ; 
 struct demux_cached_range* FUNC6 (struct demux_internal*,double,int) ; 
 struct demux_packet* FUNC7 (struct demux_queue*,double,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

double FUNC10(struct demuxer *demuxer, double pts,
                                     bool for_end)
{
    struct demux_internal *in = demuxer->in;
    FUNC4(demuxer == in->d_user);

    double res = MP_NOPTS_VALUE;
    if (pts == MP_NOPTS_VALUE)
        return pts;

    FUNC8(&in->lock);

    pts = FUNC0(pts, -in->ts_offset);

    // (When determining the end, look before the keyframe at pts, so subtract
    // an arbitrary amount to round down.)
    double seek_pts = for_end ? pts - 0.001 : pts;
    int flags = 0;
    struct demux_cached_range *r = FUNC6(in, seek_pts, flags);
    if (r) {
        if (!for_end)
            FUNC3(in, r, &pts, &flags);

        double t[STREAM_TYPE_COUNT];
        for (int n = 0; n < STREAM_TYPE_COUNT; n++)
            t[n] = MP_NOPTS_VALUE;

        for (int n = 0; n < in->num_streams; n++) {
            struct demux_stream *ds = in->streams[n]->ds;
            struct demux_queue *q = r->streams[n];

            struct demux_packet *dp = FUNC7(q, pts, flags);
            if (dp) {
                if (for_end) {
                    while (dp) {
                        double pdts = FUNC2(dp->dts, dp->pts);

                        if (pdts != MP_NOPTS_VALUE && pdts >= pts && dp->keyframe)
                            break;

                        t[ds->type] = FUNC1(t[ds->type], pdts);

                        dp = dp->next;
                    }
                } else {
                    double start;
                    FUNC5(dp, &start, NULL);
                    start = FUNC1(start, r->seek_start);
                    t[ds->type] = FUNC1(t[ds->type], start);
                }
            }
        }

        res = t[STREAM_VIDEO];
        if (res == MP_NOPTS_VALUE)
            res = t[STREAM_AUDIO];
        if (res == MP_NOPTS_VALUE) {
            for (int n = 0; n < STREAM_TYPE_COUNT; n++) {
                res = t[n];
                if (res != MP_NOPTS_VALUE)
                    break;
            }
        }
    }

    res = FUNC0(res, in->ts_offset);

    FUNC9(&in->lock);

    return res;
}