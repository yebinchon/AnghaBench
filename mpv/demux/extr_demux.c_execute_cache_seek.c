
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demux_stream {int skip_to_keyframe; int selected; int refreshing; int type; struct demux_packet* reader_head; int base_ts; } ;
struct demux_queue {int dummy; } ;
struct demux_packet {int dts; int pts; } ;
struct demux_internal {int num_streams; int seeking; TYPE_1__** streams; scalar_t__ seek_pts; int seek_flags; struct demux_cached_range* current_range; } ;
struct demux_cached_range {scalar_t__ seek_end; struct demux_queue** streams; } ;
struct TYPE_2__ {struct demux_stream* ds; } ;


 int MP_PTS_OR_DEF (int ,int ) ;
 int MP_VERBOSE (struct demux_internal*,char*,...) ;
 int SEEK_HR ;
 int adjust_cache_seek_target (struct demux_internal*,struct demux_cached_range*,double*,int*) ;
 struct demux_packet* find_seek_target (struct demux_queue*,double,int) ;
 int stream_type_name (int ) ;
 int switch_current_range (struct demux_internal*,struct demux_cached_range*) ;

__attribute__((used)) static void execute_cache_seek(struct demux_internal *in,
                               struct demux_cached_range *range,
                               double pts, int flags)
{
    adjust_cache_seek_target(in, range, &pts, &flags);

    for (int n = 0; n < in->num_streams; n++) {
        struct demux_stream *ds = in->streams[n]->ds;
        struct demux_queue *queue = range->streams[n];

        struct demux_packet *target = find_seek_target(queue, pts, flags);
        ds->reader_head = target;
        ds->skip_to_keyframe = !target;
        if (ds->reader_head)
            ds->base_ts = MP_PTS_OR_DEF(ds->reader_head->pts, ds->reader_head->dts);

        MP_VERBOSE(in, "seeking stream %d (%s) to ",
                   n, stream_type_name(ds->type));

        if (target) {
            MP_VERBOSE(in, "packet %f/%f\n", target->pts, target->dts);
        } else {
            MP_VERBOSE(in, "nothing\n");
        }
    }



    if (in->current_range != range) {
        switch_current_range(in, range);

        in->seeking = 1;
        in->seek_flags = SEEK_HR;
        in->seek_pts = range->seek_end - 1.0;





        for (int n = 0; n < in->num_streams; n++) {
            struct demux_stream *ds = in->streams[n]->ds;

            ds->refreshing = ds->selected;
        }

        MP_VERBOSE(in, "resuming demuxer to end of cached range\n");
    }
}
