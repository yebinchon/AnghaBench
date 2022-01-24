#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
struct track {scalar_t__ type; struct mp_decoder_wrapper* dec; TYPE_11__* demuxer; int /*<<< orphan*/  user_tid; TYPE_1__* stream; scalar_t__ is_external; scalar_t__ selected; } ;
struct seek_params {scalar_t__ type; double amount; scalar_t__ exact; int flags; } ;
struct mp_decoder_wrapper {int dummy; } ;
struct MPOpts {int play_dir; double hr_seek_demuxer_offset; scalar_t__ hr_seek_framedrop; int /*<<< orphan*/  hr_seek; scalar_t__ correct_pts; } ;
struct TYPE_18__ {double last_chapter_pts; int last_chapter_seek; int num_tracks; int play_dir; double last_seek_pts; int hrseek_active; int hrseek_backstep; double hrseek_pts; scalar_t__ stop_play; struct seek_params current_seek; int /*<<< orphan*/  start_timestamp; struct track** tracks; struct track* seek_slave; scalar_t__ recorder; TYPE_11__* demuxer; struct MPOpts* opts; } ;
struct TYPE_17__ {int /*<<< orphan*/  attached_picture; } ;
struct TYPE_16__ {int /*<<< orphan*/  seekable; scalar_t__ ts_resets_possible; } ;
typedef  TYPE_2__ MPContext ;

/* Variables and functions */
 scalar_t__ AT_END_OF_FILE ; 
 scalar_t__ KEEP_PLAYING ; 
 double FUNC0 (double,double) ; 
#define  MPSEEK_ABSOLUTE 131 
#define  MPSEEK_BACKSTEP 130 
 scalar_t__ MPSEEK_EXACT ; 
#define  MPSEEK_FACTOR 129 
 int MPSEEK_FLAG_NOFLUSH ; 
 scalar_t__ MPSEEK_KEYFRAME ; 
#define  MPSEEK_RELATIVE 128 
 scalar_t__ MPSEEK_VERY_EXACT ; 
 int /*<<< orphan*/  MPV_EVENT_SEEK ; 
 int /*<<< orphan*/  MPV_EVENT_TICK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,double,...) ; 
 int SEEK_CACHED ; 
 int SEEK_FACTOR ; 
 int SEEK_FORWARD ; 
 int SEEK_HR ; 
 int SEEK_SATAN ; 
 scalar_t__ STREAM_AUDIO ; 
 scalar_t__ STREAM_VIDEO ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_11__*,double,int) ; 
 double FUNC7 (TYPE_2__*) ; 
 double FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,struct track*) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_decoder_wrapper*,double) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC17(MPContext *mpctx, struct seek_params seek)
{
    struct MPOpts *opts = mpctx->opts;

    if (!mpctx->demuxer || !seek.type || seek.amount == MP_NOPTS_VALUE)
        return;

    bool hr_seek_very_exact = seek.exact == MPSEEK_VERY_EXACT;
    double current_time = FUNC7(mpctx);
    if (current_time == MP_NOPTS_VALUE && seek.type == MPSEEK_RELATIVE)
        return;
    if (current_time == MP_NOPTS_VALUE)
        current_time = 0;
    double seek_pts = MP_NOPTS_VALUE;
    int demux_flags = 0;

    switch (seek.type) {
    case MPSEEK_ABSOLUTE:
        seek_pts = seek.amount;
        break;
    case MPSEEK_BACKSTEP:
        seek_pts = current_time;
        hr_seek_very_exact = true;
        break;
    case MPSEEK_RELATIVE:
        demux_flags = seek.amount > 0 ? SEEK_FORWARD : 0;
        seek_pts = current_time + seek.amount;
        break;
    case MPSEEK_FACTOR: ;
        double len = FUNC8(mpctx);
        if (len >= 0)
            seek_pts = seek.amount * len;
        break;
    default: FUNC3();
    }

    double demux_pts = seek_pts;

    bool hr_seek = opts->correct_pts && seek.exact != MPSEEK_KEYFRAME &&
                 ((opts->hr_seek == 0 && seek.type == MPSEEK_ABSOLUTE) ||
                  opts->hr_seek > 0 || seek.exact >= MPSEEK_EXACT) &&
                 seek_pts != MP_NOPTS_VALUE;

    if (seek.type == MPSEEK_FACTOR || seek.amount < 0 ||
        (seek.type == MPSEEK_ABSOLUTE && seek.amount < mpctx->last_chapter_pts))
        mpctx->last_chapter_seek = -2;

    // Under certain circumstances, prefer SEEK_FACTOR.
    if (seek.type == MPSEEK_FACTOR && !hr_seek &&
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
        // Always try to compensate for possibly bad demuxers in "special"
        // situations where we need more robustness from the hr-seek code, even
        // if the user doesn't use --hr-seek-demuxer-offset.
        // The value is arbitrary, but should be "good enough" in most situations.
        if (hr_seek_very_exact)
            hr_seek_offset = FUNC0(hr_seek_offset, 0.5); // arbitrary
        for (int n = 0; n < mpctx->num_tracks; n++) {
            double offset = 0;
            if (!mpctx->tracks[n]->is_external)
                offset += FUNC9(mpctx, mpctx->tracks[n]);
            hr_seek_offset = FUNC0(hr_seek_offset, -offset);
        }
        demux_pts -= hr_seek_offset * play_dir;
        demux_flags = (demux_flags | SEEK_HR) & ~SEEK_FORWARD;
        // For HR seeks in backward playback mode, the correct seek rounding
        // direction is forward instead of backward.
        if (play_dir < 0)
            demux_flags |= SEEK_FORWARD;
    }

    if (!mpctx->demuxer->seekable)
        demux_flags |= SEEK_CACHED;

    if (!FUNC6(mpctx->demuxer, demux_pts, demux_flags)) {
        if (!mpctx->demuxer->seekable) {
            FUNC1(mpctx, "Cannot seek in this stream.\n");
            FUNC1(mpctx, "You can force it with '--force-seekable=yes'.\n");
        }
        return;
    }

    mpctx->play_dir = play_dir;

    // Seek external, extra files too:
    bool has_video = false;
    struct track *external_audio = NULL;
    for (int t = 0; t < mpctx->num_tracks; t++) {
        struct track *track = mpctx->tracks[t];
        if (track->selected && track->is_external && track->demuxer) {
            double main_new_pos = demux_pts;
            if (!hr_seek || track->is_external)
                main_new_pos += FUNC9(mpctx, track);
            if (demux_flags & SEEK_FACTOR)
                main_new_pos = seek_pts;
            FUNC6(track->demuxer, main_new_pos, demux_flags & SEEK_SATAN);
            if (track->type == STREAM_AUDIO && !external_audio)
                external_audio = track;
        }
        if (track->selected && !track->is_external && track->stream &&
            track->type == STREAM_VIDEO && !track->stream->attached_picture)
            has_video = true;
    }

    if (!(seek.flags & MPSEEK_FLAG_NOFLUSH))
        FUNC4(mpctx);

    FUNC15(mpctx);
    if (mpctx->recorder)
        FUNC12(mpctx->recorder);

    // When doing keyframe seeks (hr_seek=false) backwards (no SEEK_FORWARD),
    // then video can seek before the external audio track (because video seek
    // granularity is coarser than audio). The result would be playing video with
    // silence until the audio seek target is reached. Work around by blocking
    // the demuxer (decoders can't read) and seeking to video position later.
    if (has_video && external_audio && !hr_seek && mpctx->play_dir > 0 &&
        !(demux_flags & SEEK_FORWARD))
    {
        FUNC2(mpctx, "delayed seek for aid=%d\n", external_audio->user_tid);
        FUNC5(external_audio->demuxer, true);
        mpctx->seek_slave = external_audio;
    }

    /* Use the target time as "current position" for further relative
     * seeks etc until a new video frame has been decoded */
    mpctx->last_seek_pts = seek_pts;

    if (hr_seek) {
        mpctx->hrseek_active = true;
        mpctx->hrseek_backstep = seek.type == MPSEEK_BACKSTEP;
        mpctx->hrseek_pts = seek_pts * mpctx->play_dir;

        // allow decoder to drop frames before hrseek_pts
        bool hrseek_framedrop = !hr_seek_very_exact && opts->hr_seek_framedrop;

        FUNC2(mpctx, "hr-seek, skipping to %f%s%s\n", mpctx->hrseek_pts,
                   hrseek_framedrop ? "" : " (no framedrop)",
                   mpctx->hrseek_backstep ? " (backstep)" : "");

        for (int n = 0; n < mpctx->num_tracks; n++) {
            struct track *track = mpctx->tracks[n];
            struct mp_decoder_wrapper *dec = track->dec;
            if (dec && hrseek_framedrop)
                FUNC10(dec, mpctx->hrseek_pts);
        }
    }

    if (mpctx->stop_play == AT_END_OF_FILE)
        mpctx->stop_play = KEEP_PLAYING;

    mpctx->start_timestamp = FUNC13();
    FUNC14(mpctx);

    FUNC11(mpctx, MPV_EVENT_SEEK, NULL);
    FUNC11(mpctx, MPV_EVENT_TICK, NULL);

    FUNC16(mpctx);

    mpctx->current_seek = seek;
}