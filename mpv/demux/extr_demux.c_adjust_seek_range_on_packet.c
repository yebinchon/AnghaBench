
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct demux_stream {TYPE_3__* in; TYPE_1__* sh; struct demux_queue* queue; } ;
struct demux_queue {int is_eof; double seek_start; double seek_end; TYPE_2__* range; struct demux_packet* keyframe_latest; } ;
struct demux_packet {scalar_t__ keyframe; } ;
struct TYPE_6__ {int seekable_cache; } ;
struct TYPE_5__ {double seek_end; } ;
struct TYPE_4__ {double seek_preroll; } ;


 double MP_NOPTS_VALUE ;
 int add_index_entry (struct demux_queue*,struct demux_packet*,double) ;
 int attempt_range_joining (TYPE_3__*) ;
 int compute_keyframe_times (struct demux_packet*,double*,double*) ;
 int update_seek_ranges (TYPE_2__*) ;

__attribute__((used)) static void adjust_seek_range_on_packet(struct demux_stream *ds,
                                        struct demux_packet *dp)
{
    struct demux_queue *queue = ds->queue;

    if (!ds->in->seekable_cache)
        return;

    bool new_eof = !dp;
    bool update_ranges = queue->is_eof != new_eof;
    queue->is_eof = new_eof;

    if (!dp || dp->keyframe) {
        if (queue->keyframe_latest) {
            double kf_min, kf_max;
            compute_keyframe_times(queue->keyframe_latest, &kf_min, &kf_max);

            if (kf_min != MP_NOPTS_VALUE) {
                add_index_entry(queue, queue->keyframe_latest, kf_min);


                if (queue->seek_start == MP_NOPTS_VALUE) {
                    update_ranges = 1;
                    queue->seek_start = kf_min + ds->sh->seek_preroll;
                }
            }

            if (kf_max != MP_NOPTS_VALUE &&
                (queue->seek_end == MP_NOPTS_VALUE || kf_max > queue->seek_end))
            {





                if (queue->range->seek_end == MP_NOPTS_VALUE ||
                    queue->seek_end <= queue->range->seek_end)
                {
                    update_ranges = 1;
                }

                queue->seek_end = kf_max;
            }
        }

        queue->keyframe_latest = dp;
    }

    if (update_ranges) {
        update_seek_ranges(queue->range);
        attempt_range_joining(ds->in);
    }
}
