
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct demux_stream {int eof; int refreshing; int eager; int selected; scalar_t__ type; size_t index; int still_image; TYPE_1__* sh; } ;
struct demux_internal {int num_streams; int blocked; int num_ranges; struct demux_cached_range** ranges; TYPE_2__** streams; } ;
struct demux_cached_range {int * streams; } ;
struct TYPE_4__ {struct demux_stream* ds; } ;
struct TYPE_3__ {int attached_picture; int still_image; } ;


 scalar_t__ STREAM_SUB ;
 int clear_queue (int ) ;
 int ds_clear_reader_state (struct demux_stream*,int) ;
 int free_empty_cached_ranges (struct demux_internal*) ;
 int update_seek_ranges (struct demux_cached_range*) ;
 int wakeup_ds (struct demux_stream*) ;

__attribute__((used)) static void update_stream_selection_state(struct demux_internal *in,
                                          struct demux_stream *ds)
{
    ds->eof = 0;
    ds->refreshing = 0;




    bool any_av_streams = 0;
    bool any_streams = 0;

    for (int n = 0; n < in->num_streams; n++) {
        struct demux_stream *s = in->streams[n]->ds;

        s->still_image = s->sh->still_image;
        s->eager = s->selected && !s->sh->attached_picture;
        if (s->eager && !s->still_image)
            any_av_streams |= s->type != STREAM_SUB;
        any_streams |= s->selected;
    }



    if (any_av_streams) {
        for (int n = 0; n < in->num_streams; n++) {
            struct demux_stream *s = in->streams[n]->ds;

            if (s->type == STREAM_SUB)
                s->eager = 0;
        }
    }

    if (!any_streams)
        in->blocked = 0;

    ds_clear_reader_state(ds, 1);





    for (int n = 0; n < in->num_ranges; n++) {
        struct demux_cached_range *range = in->ranges[n];

        if (!ds->selected)
            clear_queue(range->streams[ds->index]);

        update_seek_ranges(range);
    }

    free_empty_cached_ranges(in);

    wakeup_ds(ds);
}
