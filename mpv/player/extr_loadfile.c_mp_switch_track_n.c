
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct track {int type; int user_tid; int selected; scalar_t__ remux_sink; scalar_t__ sink; } ;
struct MPContext {int track_layout_hash; struct track*** current_track; TYPE_3__* ao_chain; TYPE_2__* vo_chain; int demuxer; TYPE_1__* opts; } ;
typedef enum stream_type { ____Placeholder_stream_type } stream_type ;
struct TYPE_6__ {int track; } ;
struct TYPE_5__ {int track; } ;
struct TYPE_4__ {int** stream_id; } ;


 int FLAG_MARK_SELECTION ;
 int MPV_EVENT_TRACK_SWITCHED ;
 int MP_ERR (struct MPContext*,char*,...) ;
 int NUM_PTRACKS ;
 int STREAM_AUDIO ;
 int STREAM_SUB ;
 int STREAM_VIDEO ;
 int assert (int) ;
 int clear_audio_output_buffers (struct MPContext*) ;
 int close_recorder_and_error (struct MPContext*) ;
 int handle_force_window (struct MPContext*,int) ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int mp_wakeup_core (struct MPContext*) ;
 int reinit_audio_chain (struct MPContext*) ;
 int reinit_sub (struct MPContext*,struct track*) ;
 int reinit_video_chain (struct MPContext*) ;
 int reselect_demux_stream (struct MPContext*,struct track*) ;
 int talloc_free (int ) ;
 int talloc_steal (struct MPContext*,int ) ;
 int track_layout_hash (struct MPContext*) ;
 int uninit_audio_chain (struct MPContext*) ;
 int uninit_audio_out (struct MPContext*) ;
 int uninit_sub (struct MPContext*,struct track*) ;
 int uninit_video_chain (struct MPContext*) ;

void mp_switch_track_n(struct MPContext *mpctx, int order, enum stream_type type,
                       struct track *track, int flags)
{
    assert(!track || track->type == type);
    assert(order >= 0 && order < NUM_PTRACKS);



    if (flags & FLAG_MARK_SELECTION)
        mpctx->opts->stream_id[order][type] = track ? track->user_tid : -2;


    if (!mpctx->demuxer)
        return;

    struct track *current = mpctx->current_track[order][type];
    if (track == current)
        return;

    if (current && current->sink) {
        MP_ERR(mpctx, "Can't disable input to complex filter.\n");
        return;
    }
    if ((type == STREAM_VIDEO && mpctx->vo_chain && !mpctx->vo_chain->track) ||
        (type == STREAM_AUDIO && mpctx->ao_chain && !mpctx->ao_chain->track))
    {
        MP_ERR(mpctx, "Can't switch away from complex filter output.\n");
        return;
    }

    if (track && track->selected) {

        MP_ERR(mpctx, "Track %d is already selected.\n", track->user_tid);
        return;
    }

    if (order == 0) {
        if (type == STREAM_VIDEO) {
            uninit_video_chain(mpctx);
            if (!track)
                handle_force_window(mpctx, 1);
        } else if (type == STREAM_AUDIO) {
            clear_audio_output_buffers(mpctx);
            uninit_audio_chain(mpctx);
            uninit_audio_out(mpctx);
        }
    }
    if (type == STREAM_SUB)
        uninit_sub(mpctx, current);

    if (current) {
        if (current->remux_sink)
            close_recorder_and_error(mpctx);
        current->selected = 0;
        reselect_demux_stream(mpctx, current);
    }

    mpctx->current_track[order][type] = track;

    if (track) {
        track->selected = 1;
        reselect_demux_stream(mpctx, track);
    }

    if (type == STREAM_VIDEO && order == 0) {
        reinit_video_chain(mpctx);
    } else if (type == STREAM_AUDIO && order == 0) {
        reinit_audio_chain(mpctx);
    } else if (type == STREAM_SUB && order >= 0 && order <= 2) {
        reinit_sub(mpctx, track);
    }

    mp_notify(mpctx, MPV_EVENT_TRACK_SWITCHED, ((void*)0));
    mp_wakeup_core(mpctx);

    talloc_free(mpctx->track_layout_hash);
    mpctx->track_layout_hash = talloc_steal(mpctx, track_layout_hash(mpctx));
}
