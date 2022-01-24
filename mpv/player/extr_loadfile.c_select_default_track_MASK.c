#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct track {int type; int user_tid; scalar_t__ is_external; scalar_t__ attached_picture; int /*<<< orphan*/  forced_track; int /*<<< orphan*/  default_track; int /*<<< orphan*/  lang; int /*<<< orphan*/  no_default; scalar_t__ no_auto_select; } ;
struct MPOpts {int** stream_id; char*** stream_lang; int /*<<< orphan*/  autoload_files; int /*<<< orphan*/  audio_display; } ;
struct MPContext {int num_tracks; struct MPOpts* opts; struct track** tracks; } ;
typedef  enum stream_type { ____Placeholder_stream_type } stream_type ;

/* Variables and functions */
 int STREAM_AUDIO ; 
 int STREAM_VIDEO ; 
 scalar_t__ FUNC0 (struct track*,struct track*,char**,struct MPOpts*) ; 
 scalar_t__ FUNC1 (struct MPContext*,int,int,struct track*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ ) ; 

struct track *FUNC3(struct MPContext *mpctx, int order,
                                   enum stream_type type)
{
    struct MPOpts *opts = mpctx->opts;
    int tid = opts->stream_id[order][type];
    char **langs = opts->stream_lang[type];
    if (tid == -2)
        return NULL;
    bool select_fallback = type == STREAM_VIDEO || type == STREAM_AUDIO;
    struct track *pick = NULL;
    for (int n = 0; n < mpctx->num_tracks; n++) {
        struct track *track = mpctx->tracks[n];
        if (track->type != type)
            continue;
        if (track->user_tid == tid)
            return track;
        if (track->no_auto_select)
            continue;
        if (FUNC1(mpctx, order, type, track))
            continue;
        if (!pick || FUNC0(track, pick, langs, mpctx->opts))
            pick = track;
    }
    if (pick && !select_fallback && !(pick->is_external && !pick->no_default)
        && !FUNC2(langs, pick->lang) && !pick->default_track
        && !pick->forced_track)
        pick = NULL;
    if (pick && pick->attached_picture && !mpctx->opts->audio_display)
        pick = NULL;
    if (pick && !opts->autoload_files && pick->is_external)
        pick = NULL;
    return pick;
}