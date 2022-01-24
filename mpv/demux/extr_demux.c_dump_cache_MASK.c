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
struct demux_stream {scalar_t__ index; struct demux_packet* dump_pos; } ;
struct demux_queue {struct demux_stream* ds; } ;
struct demux_packet {scalar_t__ stream; struct demux_packet* next; scalar_t__ keyframe; int /*<<< orphan*/  pts; int /*<<< orphan*/  dts; } ;
struct demux_internal {scalar_t__ dumper_status; int num_streams; scalar_t__ dumper; struct demux_cached_range* current_range; TYPE_1__** streams; struct demux_cached_range** ranges; int /*<<< orphan*/  num_ranges; } ;
struct demux_cached_range {double seek_start; double seek_end; int num_streams; struct demux_queue** streams; } ;
typedef  int /*<<< orphan*/  ranges ;
struct TYPE_2__ {struct demux_stream* ds; } ;

/* Variables and functions */
 void* CONTROL_ERROR ; 
 scalar_t__ CONTROL_OK ; 
 void* CONTROL_TRUE ; 
 int MAX_SEEK_RANGES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_cached_range**) ; 
 double MP_NOPTS_VALUE ; 
 double FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct demux_internal*,struct demux_cached_range*,double*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct demux_internal*) ; 
 struct demux_packet* FUNC6 (struct demux_queue*,double,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct demux_cached_range**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  range_time_compare ; 
 struct demux_packet* FUNC9 (struct demux_internal*,struct demux_packet*) ; 
 int /*<<< orphan*/  FUNC10 (struct demux_packet*) ; 
 int /*<<< orphan*/  FUNC11 (struct demux_internal*,struct demux_packet*) ; 

__attribute__((used)) static void FUNC12(struct demux_internal *in, double start, double end)
{
    in->dumper_status = in->dumper ? CONTROL_TRUE : CONTROL_ERROR;
    if (!in->dumper)
        return;

    // (only in pathological cases there might be more ranges than allowed)
    struct demux_cached_range *ranges[MAX_SEEK_RANGES];
    int num_ranges = 0;
    for (int n = 0; n < FUNC0(FUNC1(ranges), in->num_ranges); n++)
        ranges[num_ranges++] = in->ranges[n];
    FUNC8(ranges, num_ranges, sizeof(ranges[0]), range_time_compare);

    for (int n = 0; n < num_ranges; n++) {
        struct demux_cached_range *r = ranges[n];
        if (r->seek_start == MP_NOPTS_VALUE)
            continue;
        if (r->seek_end <= start)
            continue;
        if (end != MP_NOPTS_VALUE && r->seek_start >= end)
            continue;

        FUNC7(in->dumper);

        double pts = start;
        int flags = 0;
        FUNC3(in, r, &pts, &flags);

        for (int i = 0; i < r->num_streams; i++) {
            struct demux_queue *q = r->streams[i];
            struct demux_stream *ds = q->ds;

            ds->dump_pos = FUNC6(q, pts, flags);
        }

        // We need to reinterleave the separate streams somehow, which makes
        // everything more complex.
        while (1) {
            struct demux_packet *next = NULL;
            double next_dts = MP_NOPTS_VALUE;

            for (int i = 0; i < r->num_streams; i++) {
                struct demux_stream *ds = r->streams[i]->ds;
                struct demux_packet *dp = ds->dump_pos;

                if (!dp)
                    continue;
                FUNC4(dp->stream == ds->index);

                double pdts = FUNC2(dp->dts, dp->pts);

                // Check for stream EOF. Note that we don't try to EOF
                // streams at the same point (e.g. video can take longer
                // to finish than audio, so the output file will have no
                // audio for the last part of the video). Too much effort.
                if (pdts != MP_NOPTS_VALUE && end != MP_NOPTS_VALUE &&
                    pdts >= end && dp->keyframe)
                {
                    ds->dump_pos = NULL;
                    continue;
                }

                if (pdts == MP_NOPTS_VALUE || next_dts == MP_NOPTS_VALUE ||
                    pdts < next_dts)
                {
                    next_dts = pdts;
                    next = dp;
                }
            }

            if (!next)
                break;

            struct demux_stream *ds = in->streams[next->stream]->ds;
            ds->dump_pos = next->next;

            struct demux_packet *dp = FUNC9(in, next);
            if (!dp) {
                in->dumper_status = CONTROL_ERROR;
                break;
            }

            FUNC11(in, dp);

            FUNC10(dp);
        }

        if (in->dumper_status != CONTROL_OK)
            break;
    }

    // (strictly speaking unnecessary; for clarity)
    for (int n = 0; n < in->num_streams; n++)
        in->streams[n]->ds->dump_pos = NULL;

    // If dumping (in end==NOPTS mode) doesn't continue at the range that
    // was written last, we have a discontinuity.
    if (num_ranges && ranges[num_ranges - 1] != in->current_range)
        FUNC7(in->dumper);

    // end=NOPTS means the demuxer output continues to be written to the
    // dump file.
    if (end != MP_NOPTS_VALUE || in->dumper_status != CONTROL_OK)
        FUNC5(in);
}