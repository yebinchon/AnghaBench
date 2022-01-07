
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct demuxer {int partially_seekable; int seekable; TYPE_1__* desc; } ;
struct demux_stream {scalar_t__ type; int last_ret_pos; double last_ret_dts; int refreshing; TYPE_3__* queue; scalar_t__ selected; int base_ts; } ;
struct demux_internal {int num_streams; int seeking; double seek_pts; int seek_flags; int current_range; TYPE_2__** streams; struct demuxer* d_thread; } ;
struct TYPE_6__ {int correct_dts; int correct_pos; int last_pos; double last_dts; } ;
struct TYPE_5__ {struct demux_stream* ds; } ;
struct TYPE_4__ {scalar_t__ seek; } ;


 double MP_NOPTS_VALUE ;
 double MP_PTS_MIN (double,int ) ;
 int MP_VERBOSE (struct demux_internal*,char*,...) ;
 int SEEK_HR ;
 scalar_t__ STREAM_AUDIO ;
 scalar_t__ STREAM_VIDEO ;
 int clear_queue (TYPE_3__*) ;
 int ds_clear_reader_queue_state (struct demux_stream*) ;
 int update_seek_ranges (int ) ;

__attribute__((used)) static void initiate_refresh_seek(struct demux_internal *in,
                                  struct demux_stream *stream,
                                  double start_ts)
{
    struct demuxer *demux = in->d_thread;
    bool seekable = demux->desc->seek && demux->seekable &&
                    !demux->partially_seekable;

    bool normal_seek = 1;
    bool refresh_possible = 1;
    for (int n = 0; n < in->num_streams; n++) {
        struct demux_stream *ds = in->streams[n]->ds;

        if (!ds->selected)
            continue;

        if (ds->type == STREAM_VIDEO || ds->type == STREAM_AUDIO)
            start_ts = MP_PTS_MIN(start_ts, ds->base_ts);


        normal_seek &= stream == ds;

        refresh_possible &= ds->queue->correct_dts || ds->queue->correct_pos;
    }

    if (start_ts == MP_NOPTS_VALUE || !seekable)
        return;

    if (!normal_seek) {
        if (!refresh_possible) {
            MP_VERBOSE(in, "can't issue refresh seek\n");
            return;
        }

        for (int n = 0; n < in->num_streams; n++) {
            struct demux_stream *ds = in->streams[n]->ds;

            bool correct_pos = ds->queue->correct_pos;
            bool correct_dts = ds->queue->correct_dts;






            ds_clear_reader_queue_state(ds);
            clear_queue(ds->queue);



            if (ds->selected && (ds->last_ret_pos != -1 ||
                                 ds->last_ret_dts != MP_NOPTS_VALUE))
            {
                ds->refreshing = 1;
                ds->queue->correct_dts = correct_dts;
                ds->queue->correct_pos = correct_pos;
                ds->queue->last_pos = ds->last_ret_pos;
                ds->queue->last_dts = ds->last_ret_dts;
            }

            update_seek_ranges(in->current_range);
        }

        start_ts -= 1.0;
    }

    MP_VERBOSE(in, "refresh seek to %f\n", start_ts);
    in->seeking = 1;
    in->seek_flags = SEEK_HR;
    in->seek_pts = start_ts;
}
