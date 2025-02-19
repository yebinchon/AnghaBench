
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


struct track {scalar_t__ type; struct mp_decoder_wrapper* dec; TYPE_11__* demuxer; int user_tid; TYPE_1__* stream; scalar_t__ is_external; scalar_t__ selected; } ;
struct seek_params {scalar_t__ type; double amount; scalar_t__ exact; int flags; } ;
struct mp_decoder_wrapper {int dummy; } ;
struct MPOpts {int play_dir; double hr_seek_demuxer_offset; scalar_t__ hr_seek_framedrop; int hr_seek; scalar_t__ correct_pts; } ;
struct TYPE_18__ {double last_chapter_pts; int last_chapter_seek; int num_tracks; int play_dir; double last_seek_pts; int hrseek_active; int hrseek_backstep; double hrseek_pts; scalar_t__ stop_play; struct seek_params current_seek; int start_timestamp; struct track** tracks; struct track* seek_slave; scalar_t__ recorder; TYPE_11__* demuxer; struct MPOpts* opts; } ;
struct TYPE_17__ {int attached_picture; } ;
struct TYPE_16__ {int seekable; scalar_t__ ts_resets_possible; } ;
typedef TYPE_2__ MPContext ;


 scalar_t__ AT_END_OF_FILE ;
 scalar_t__ KEEP_PLAYING ;
 double MPMAX (double,double) ;


 scalar_t__ MPSEEK_EXACT ;

 int MPSEEK_FLAG_NOFLUSH ;
 scalar_t__ MPSEEK_KEYFRAME ;

 scalar_t__ MPSEEK_VERY_EXACT ;
 int MPV_EVENT_SEEK ;
 int MPV_EVENT_TICK ;
 int MP_ERR (TYPE_2__*,char*) ;
 double MP_NOPTS_VALUE ;
 int MP_VERBOSE (TYPE_2__*,char*,double,...) ;
 int SEEK_CACHED ;
 int SEEK_FACTOR ;
 int SEEK_FORWARD ;
 int SEEK_HR ;
 int SEEK_SATAN ;
 scalar_t__ STREAM_AUDIO ;
 scalar_t__ STREAM_VIDEO ;
 int abort () ;
 int clear_audio_output_buffers (TYPE_2__*) ;
 int demux_block_reading (TYPE_11__*,int) ;
 int demux_seek (TYPE_11__*,double,int) ;
 double get_current_time (TYPE_2__*) ;
 double get_time_length (TYPE_2__*) ;
 scalar_t__ get_track_seek_offset (TYPE_2__*,struct track*) ;
 int mp_decoder_wrapper_set_start_pts (struct mp_decoder_wrapper*,double) ;
 int mp_notify (TYPE_2__*,int ,int *) ;
 int mp_recorder_mark_discontinuity (scalar_t__) ;
 int mp_time_sec () ;
 int mp_wakeup_core (TYPE_2__*) ;
 int reset_playback_state (TYPE_2__*) ;
 int update_ab_loop_clip (TYPE_2__*) ;

__attribute__((used)) static void mp_seek(MPContext *mpctx, struct seek_params seek)
{
    struct MPOpts *opts = mpctx->opts;

    if (!mpctx->demuxer || !seek.type || seek.amount == MP_NOPTS_VALUE)
        return;

    bool hr_seek_very_exact = seek.exact == MPSEEK_VERY_EXACT;
    double current_time = get_current_time(mpctx);
    if (current_time == MP_NOPTS_VALUE && seek.type == 128)
        return;
    if (current_time == MP_NOPTS_VALUE)
        current_time = 0;
    double seek_pts = MP_NOPTS_VALUE;
    int demux_flags = 0;

    switch (seek.type) {
    case 131:
        seek_pts = seek.amount;
        break;
    case 130:
        seek_pts = current_time;
        hr_seek_very_exact = 1;
        break;
    case 128:
        demux_flags = seek.amount > 0 ? SEEK_FORWARD : 0;
        seek_pts = current_time + seek.amount;
        break;
    case 129: ;
        double len = get_time_length(mpctx);
        if (len >= 0)
            seek_pts = seek.amount * len;
        break;
    default: abort();
    }

    double demux_pts = seek_pts;

    bool hr_seek = opts->correct_pts && seek.exact != MPSEEK_KEYFRAME &&
                 ((opts->hr_seek == 0 && seek.type == 131) ||
                  opts->hr_seek > 0 || seek.exact >= MPSEEK_EXACT) &&
                 seek_pts != MP_NOPTS_VALUE;

    if (seek.type == 129 || seek.amount < 0 ||
        (seek.type == 131 && seek.amount < mpctx->last_chapter_pts))
        mpctx->last_chapter_seek = -2;


    if (seek.type == 129 && !hr_seek &&
        (mpctx->demuxer->ts_resets_possible || seek_pts == MP_NOPTS_VALUE))
    {
        demux_pts = seek.amount;
        demux_flags |= SEEK_FACTOR;
    }

    int play_dir = opts->play_dir;
    if (play_dir < 0)
        demux_flags |= SEEK_SATAN;

    if (hr_seek) {
        double hr_seek_offset = opts->hr_seek_demuxer_offset;




        if (hr_seek_very_exact)
            hr_seek_offset = MPMAX(hr_seek_offset, 0.5);
        for (int n = 0; n < mpctx->num_tracks; n++) {
            double offset = 0;
            if (!mpctx->tracks[n]->is_external)
                offset += get_track_seek_offset(mpctx, mpctx->tracks[n]);
            hr_seek_offset = MPMAX(hr_seek_offset, -offset);
        }
        demux_pts -= hr_seek_offset * play_dir;
        demux_flags = (demux_flags | SEEK_HR) & ~SEEK_FORWARD;


        if (play_dir < 0)
            demux_flags |= SEEK_FORWARD;
    }

    if (!mpctx->demuxer->seekable)
        demux_flags |= SEEK_CACHED;

    if (!demux_seek(mpctx->demuxer, demux_pts, demux_flags)) {
        if (!mpctx->demuxer->seekable) {
            MP_ERR(mpctx, "Cannot seek in this stream.\n");
            MP_ERR(mpctx, "You can force it with '--force-seekable=yes'.\n");
        }
        return;
    }

    mpctx->play_dir = play_dir;


    bool has_video = 0;
    struct track *external_audio = ((void*)0);
    for (int t = 0; t < mpctx->num_tracks; t++) {
        struct track *track = mpctx->tracks[t];
        if (track->selected && track->is_external && track->demuxer) {
            double main_new_pos = demux_pts;
            if (!hr_seek || track->is_external)
                main_new_pos += get_track_seek_offset(mpctx, track);
            if (demux_flags & SEEK_FACTOR)
                main_new_pos = seek_pts;
            demux_seek(track->demuxer, main_new_pos, demux_flags & SEEK_SATAN);
            if (track->type == STREAM_AUDIO && !external_audio)
                external_audio = track;
        }
        if (track->selected && !track->is_external && track->stream &&
            track->type == STREAM_VIDEO && !track->stream->attached_picture)
            has_video = 1;
    }

    if (!(seek.flags & MPSEEK_FLAG_NOFLUSH))
        clear_audio_output_buffers(mpctx);

    reset_playback_state(mpctx);
    if (mpctx->recorder)
        mp_recorder_mark_discontinuity(mpctx->recorder);






    if (has_video && external_audio && !hr_seek && mpctx->play_dir > 0 &&
        !(demux_flags & SEEK_FORWARD))
    {
        MP_VERBOSE(mpctx, "delayed seek for aid=%d\n", external_audio->user_tid);
        demux_block_reading(external_audio->demuxer, 1);
        mpctx->seek_slave = external_audio;
    }



    mpctx->last_seek_pts = seek_pts;

    if (hr_seek) {
        mpctx->hrseek_active = 1;
        mpctx->hrseek_backstep = seek.type == 130;
        mpctx->hrseek_pts = seek_pts * mpctx->play_dir;


        bool hrseek_framedrop = !hr_seek_very_exact && opts->hr_seek_framedrop;

        MP_VERBOSE(mpctx, "hr-seek, skipping to %f%s%s\n", mpctx->hrseek_pts,
                   hrseek_framedrop ? "" : " (no framedrop)",
                   mpctx->hrseek_backstep ? " (backstep)" : "");

        for (int n = 0; n < mpctx->num_tracks; n++) {
            struct track *track = mpctx->tracks[n];
            struct mp_decoder_wrapper *dec = track->dec;
            if (dec && hrseek_framedrop)
                mp_decoder_wrapper_set_start_pts(dec, mpctx->hrseek_pts);
        }
    }

    if (mpctx->stop_play == AT_END_OF_FILE)
        mpctx->stop_play = KEEP_PLAYING;

    mpctx->start_timestamp = mp_time_sec();
    mp_wakeup_core(mpctx);

    mp_notify(mpctx, MPV_EVENT_SEEK, ((void*)0));
    mp_notify(mpctx, MPV_EVENT_TICK, ((void*)0));

    update_ab_loop_clip(mpctx);

    mpctx->current_seek = seek;
}
