
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_stream {int index; struct demux_stream* ds; } ;
struct demuxer {struct demux_internal* in; } ;
struct demux_stream {int selected; double back_seek_pos; } ;
struct demux_internal {int tracks_switched; int lock; int wakeup; scalar_t__ threading; int after_seek; scalar_t__ back_demuxing; int ts_offset; } ;


 double MP_ADD_PTS (double,int ) ;
 int MP_VERBOSE (struct demux_internal*,char*,char*,int ) ;
 int execute_trackswitch (struct demux_internal*) ;
 int initiate_refresh_seek (struct demux_internal*,struct demux_stream*,double) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int update_stream_selection_state (struct demux_internal*,struct demux_stream*) ;

void demuxer_select_track(struct demuxer *demuxer, struct sh_stream *stream,
                          double ref_pts, bool selected)
{
    struct demux_internal *in = demuxer->in;
    struct demux_stream *ds = stream->ds;
    pthread_mutex_lock(&in->lock);
    ref_pts = MP_ADD_PTS(ref_pts, -in->ts_offset);

    if (ds->selected != selected) {
        MP_VERBOSE(in, "%sselect track %d\n", selected ? "" : "de", stream->index);
        ds->selected = selected;
        update_stream_selection_state(in, ds);
        in->tracks_switched = 1;
        if (ds->selected) {
            if (in->back_demuxing)
                ds->back_seek_pos = ref_pts;
            if (!in->after_seek)
                initiate_refresh_seek(in, ds, ref_pts);
        }
        if (in->threading) {
            pthread_cond_signal(&in->wakeup);
        } else {
            execute_trackswitch(in);
        }
    }
    pthread_mutex_unlock(&in->lock);
}
