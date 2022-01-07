
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {int type; int user_tid; scalar_t__ is_external; scalar_t__ attached_picture; int forced_track; int default_track; int lang; int no_default; scalar_t__ no_auto_select; } ;
struct MPOpts {int** stream_id; char*** stream_lang; int autoload_files; int audio_display; } ;
struct MPContext {int num_tracks; struct MPOpts* opts; struct track** tracks; } ;
typedef enum stream_type { ____Placeholder_stream_type } stream_type ;


 int STREAM_AUDIO ;
 int STREAM_VIDEO ;
 scalar_t__ compare_track (struct track*,struct track*,char**,struct MPOpts*) ;
 scalar_t__ duplicate_track (struct MPContext*,int,int,struct track*) ;
 int match_lang (char**,int ) ;

struct track *select_default_track(struct MPContext *mpctx, int order,
                                   enum stream_type type)
{
    struct MPOpts *opts = mpctx->opts;
    int tid = opts->stream_id[order][type];
    char **langs = opts->stream_lang[type];
    if (tid == -2)
        return ((void*)0);
    bool select_fallback = type == STREAM_VIDEO || type == STREAM_AUDIO;
    struct track *pick = ((void*)0);
    for (int n = 0; n < mpctx->num_tracks; n++) {
        struct track *track = mpctx->tracks[n];
        if (track->type != type)
            continue;
        if (track->user_tid == tid)
            return track;
        if (track->no_auto_select)
            continue;
        if (duplicate_track(mpctx, order, type, track))
            continue;
        if (!pick || compare_track(track, pick, langs, mpctx->opts))
            pick = track;
    }
    if (pick && !select_fallback && !(pick->is_external && !pick->no_default)
        && !match_lang(langs, pick->lang) && !pick->default_track
        && !pick->forced_track)
        pick = ((void*)0);
    if (pick && pick->attached_picture && !mpctx->opts->audio_display)
        pick = ((void*)0);
    if (pick && !opts->autoload_files && pick->is_external)
        pick = ((void*)0);
    return pick;
}
