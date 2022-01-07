
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct demux_stream {int refreshing; int eof; struct demux_queue* queue; scalar_t__ global_correct_pos; scalar_t__ global_correct_dts; scalar_t__ selected; } ;
struct demux_queue {TYPE_1__* head; } ;
struct demux_internal {int num_streams; int force_metadata_update; TYPE_2__** streams; struct demux_cached_range* current_range; } ;
struct demux_cached_range {struct demux_queue** streams; } ;
struct TYPE_4__ {struct demux_stream* ds; } ;
struct TYPE_3__ {int keyframe; } ;


 int MP_VERBOSE (struct demux_internal*,char*,int) ;
 int assert (int) ;
 int clear_cached_range (struct demux_internal*,struct demux_cached_range*) ;
 int free_empty_cached_ranges (struct demux_internal*) ;
 int remove_head_packet (struct demux_queue*) ;
 int set_current_range (struct demux_internal*,struct demux_cached_range*) ;

__attribute__((used)) static void switch_current_range(struct demux_internal *in,
                                 struct demux_cached_range *range)
{
    struct demux_cached_range *old = in->current_range;
    assert(old != range);

    set_current_range(in, range);

    if (old) {

        for (int n = 0; n < in->num_streams; n++) {
            struct demux_queue *queue = old->streams[n];


            while (queue->head && !queue->head->keyframe)
                remove_head_packet(queue);
        }


        for (int n = 0; n < in->num_streams; n++) {
            struct demux_stream *ds = in->streams[n]->ds;

            if (ds->selected && !(ds->global_correct_dts ||
                                  ds->global_correct_pos))
            {
                MP_VERBOSE(in, "discarding unseekable range due to stream %d\n", n);
                clear_cached_range(in, old);
                break;
            }
        }
    }


    for (int n = 0; n < in->num_streams; n++) {
        struct demux_stream *ds = in->streams[n]->ds;

        ds->queue = range->streams[n];
        ds->refreshing = 0;
        ds->eof = 0;
    }


    free_empty_cached_ranges(in);


    in->force_metadata_update = 1;
}
