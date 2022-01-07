
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demux_stream {scalar_t__ type; scalar_t__ selected; } ;
struct demux_queue {int dummy; } ;
struct demux_packet {int dummy; } ;
struct demux_internal {int num_streams; TYPE_1__** streams; } ;
struct demux_cached_range {struct demux_queue** streams; } ;
struct TYPE_2__ {struct demux_stream* ds; } ;


 double MP_NOPTS_VALUE ;
 int MP_VERBOSE (struct demux_internal*,char*,double,double) ;
 int SEEK_FORWARD ;
 int SEEK_HR ;
 scalar_t__ STREAM_VIDEO ;
 int compute_keyframe_times (struct demux_packet*,double*,int *) ;
 struct demux_packet* find_seek_target (struct demux_queue*,double,int) ;

__attribute__((used)) static void adjust_cache_seek_target(struct demux_internal *in,
                                     struct demux_cached_range *range,
                                     double *pts, int *flags)
{
    if (*flags & SEEK_HR)
        return;

    for (int n = 0; n < in->num_streams; n++) {
        struct demux_stream *ds = in->streams[n]->ds;
        struct demux_queue *queue = range->streams[n];
        if (ds->selected && ds->type == STREAM_VIDEO) {
            struct demux_packet *target = find_seek_target(queue, *pts, *flags);
            if (target) {
                double target_pts;
                compute_keyframe_times(target, &target_pts, ((void*)0));
                if (target_pts != MP_NOPTS_VALUE) {
                    MP_VERBOSE(in, "adjust seek target %f -> %f\n",
                               *pts, target_pts);


                    *pts = target_pts;
                    *flags &= ~SEEK_FORWARD;
                }
            }
            break;
        }
    }
}
