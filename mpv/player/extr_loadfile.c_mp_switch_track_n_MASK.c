#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct track {int type; int user_tid; int selected; scalar_t__ remux_sink; scalar_t__ sink; } ;
struct MPContext {int /*<<< orphan*/  track_layout_hash; struct track*** current_track; TYPE_3__* ao_chain; TYPE_2__* vo_chain; int /*<<< orphan*/  demuxer; TYPE_1__* opts; } ;
typedef  enum stream_type { ____Placeholder_stream_type } stream_type ;
struct TYPE_6__ {int /*<<< orphan*/  track; } ;
struct TYPE_5__ {int /*<<< orphan*/  track; } ;
struct TYPE_4__ {int** stream_id; } ;

/* Variables and functions */
 int FLAG_MARK_SELECTION ; 
 int /*<<< orphan*/  MPV_EVENT_TRACK_SWITCHED ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,...) ; 
 int NUM_PTRACKS ; 
 int STREAM_AUDIO ; 
 int STREAM_SUB ; 
 int STREAM_VIDEO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC7 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC8 (struct MPContext*,struct track*) ; 
 int /*<<< orphan*/  FUNC9 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC10 (struct MPContext*,struct track*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct MPContext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC14 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC15 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC16 (struct MPContext*,struct track*) ; 
 int /*<<< orphan*/  FUNC17 (struct MPContext*) ; 

void FUNC18(struct MPContext *mpctx, int order, enum stream_type type,
                       struct track *track, int flags)
{
    FUNC1(!track || track->type == type);
    FUNC1(order >= 0 && order < NUM_PTRACKS);

    // Mark the current track selection as explicitly user-requested. (This is
    // different from auto-selection or disabling a track due to errors.)
    if (flags & FLAG_MARK_SELECTION)
        mpctx->opts->stream_id[order][type] = track ? track->user_tid : -2;

    // No decoder should be initialized yet.
    if (!mpctx->demuxer)
        return;

    struct track *current = mpctx->current_track[order][type];
    if (track == current)
        return;

    if (current && current->sink) {
        FUNC0(mpctx, "Can't disable input to complex filter.\n");
        return;
    }
    if ((type == STREAM_VIDEO && mpctx->vo_chain && !mpctx->vo_chain->track) ||
        (type == STREAM_AUDIO && mpctx->ao_chain && !mpctx->ao_chain->track))
    {
        FUNC0(mpctx, "Can't switch away from complex filter output.\n");
        return;
    }

    if (track && track->selected) {
        // Track has been selected in a different order parameter.
        FUNC0(mpctx, "Track %d is already selected.\n", track->user_tid);
        return;
    }

    if (order == 0) {
        if (type == STREAM_VIDEO) {
            FUNC17(mpctx);
            if (!track)
                FUNC4(mpctx, true);
        } else if (type == STREAM_AUDIO) {
            FUNC2(mpctx);
            FUNC14(mpctx);
            FUNC15(mpctx);
        }
    }
    if (type == STREAM_SUB)
        FUNC16(mpctx, current);

    if (current) {
        if (current->remux_sink)
            FUNC3(mpctx);
        current->selected = false;
        FUNC10(mpctx, current);
    }

    mpctx->current_track[order][type] = track;

    if (track) {
        track->selected = true;
        FUNC10(mpctx, track);
    }

    if (type == STREAM_VIDEO && order == 0) {
        FUNC9(mpctx);
    } else if (type == STREAM_AUDIO && order == 0) {
        FUNC7(mpctx);
    } else if (type == STREAM_SUB && order >= 0 && order <= 2) {
        FUNC8(mpctx, track);
    }

    FUNC5(mpctx, MPV_EVENT_TRACK_SWITCHED, NULL);
    FUNC6(mpctx);

    FUNC11(mpctx->track_layout_hash);
    mpctx->track_layout_hash = FUNC12(mpctx, FUNC13(mpctx));
}