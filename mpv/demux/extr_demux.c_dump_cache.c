
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demux_stream {scalar_t__ index; struct demux_packet* dump_pos; } ;
struct demux_queue {struct demux_stream* ds; } ;
struct demux_packet {scalar_t__ stream; struct demux_packet* next; scalar_t__ keyframe; int pts; int dts; } ;
struct demux_internal {scalar_t__ dumper_status; int num_streams; scalar_t__ dumper; struct demux_cached_range* current_range; TYPE_1__** streams; struct demux_cached_range** ranges; int num_ranges; } ;
struct demux_cached_range {double seek_start; double seek_end; int num_streams; struct demux_queue** streams; } ;
typedef int ranges ;
struct TYPE_2__ {struct demux_stream* ds; } ;


 void* CONTROL_ERROR ;
 scalar_t__ CONTROL_OK ;
 void* CONTROL_TRUE ;
 int MAX_SEEK_RANGES ;
 int MPMIN (int ,int ) ;
 int MP_ARRAY_SIZE (struct demux_cached_range**) ;
 double MP_NOPTS_VALUE ;
 double MP_PTS_OR_DEF (int ,int ) ;
 int adjust_cache_seek_target (struct demux_internal*,struct demux_cached_range*,double*,int*) ;
 int assert (int) ;
 int dumper_close (struct demux_internal*) ;
 struct demux_packet* find_seek_target (struct demux_queue*,double,int) ;
 int mp_recorder_mark_discontinuity (scalar_t__) ;
 int qsort (struct demux_cached_range**,int,int,int ) ;
 int range_time_compare ;
 struct demux_packet* read_packet_from_cache (struct demux_internal*,struct demux_packet*) ;
 int talloc_free (struct demux_packet*) ;
 int write_dump_packet (struct demux_internal*,struct demux_packet*) ;

__attribute__((used)) static void dump_cache(struct demux_internal *in, double start, double end)
{
    in->dumper_status = in->dumper ? CONTROL_TRUE : CONTROL_ERROR;
    if (!in->dumper)
        return;


    struct demux_cached_range *ranges[MAX_SEEK_RANGES];
    int num_ranges = 0;
    for (int n = 0; n < MPMIN(MP_ARRAY_SIZE(ranges), in->num_ranges); n++)
        ranges[num_ranges++] = in->ranges[n];
    qsort(ranges, num_ranges, sizeof(ranges[0]), range_time_compare);

    for (int n = 0; n < num_ranges; n++) {
        struct demux_cached_range *r = ranges[n];
        if (r->seek_start == MP_NOPTS_VALUE)
            continue;
        if (r->seek_end <= start)
            continue;
        if (end != MP_NOPTS_VALUE && r->seek_start >= end)
            continue;

        mp_recorder_mark_discontinuity(in->dumper);

        double pts = start;
        int flags = 0;
        adjust_cache_seek_target(in, r, &pts, &flags);

        for (int i = 0; i < r->num_streams; i++) {
            struct demux_queue *q = r->streams[i];
            struct demux_stream *ds = q->ds;

            ds->dump_pos = find_seek_target(q, pts, flags);
        }



        while (1) {
            struct demux_packet *next = ((void*)0);
            double next_dts = MP_NOPTS_VALUE;

            for (int i = 0; i < r->num_streams; i++) {
                struct demux_stream *ds = r->streams[i]->ds;
                struct demux_packet *dp = ds->dump_pos;

                if (!dp)
                    continue;
                assert(dp->stream == ds->index);

                double pdts = MP_PTS_OR_DEF(dp->dts, dp->pts);





                if (pdts != MP_NOPTS_VALUE && end != MP_NOPTS_VALUE &&
                    pdts >= end && dp->keyframe)
                {
                    ds->dump_pos = ((void*)0);
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

            struct demux_packet *dp = read_packet_from_cache(in, next);
            if (!dp) {
                in->dumper_status = CONTROL_ERROR;
                break;
            }

            write_dump_packet(in, dp);

            talloc_free(dp);
        }

        if (in->dumper_status != CONTROL_OK)
            break;
    }


    for (int n = 0; n < in->num_streams; n++)
        in->streams[n]->ds->dump_pos = ((void*)0);



    if (num_ranges && ranges[num_ranges - 1] != in->current_range)
        mp_recorder_mark_discontinuity(in->dumper);



    if (end != MP_NOPTS_VALUE || in->dumper_status != CONTROL_OK)
        dumper_close(in);
}
