
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct track {scalar_t__ type; scalar_t__ selected; } ;
struct MPOpts {double audio_delay; TYPE_1__* subs_rend; } ;
struct MPContext {struct MPOpts* opts; } ;
struct TYPE_2__ {double sub_delay; } ;


 scalar_t__ STREAM_AUDIO ;
 scalar_t__ STREAM_SUB ;

double get_track_seek_offset(struct MPContext *mpctx, struct track *track)
{
    struct MPOpts *opts = mpctx->opts;
    if (track->selected) {
        if (track->type == STREAM_AUDIO)
            return -opts->audio_delay;
        if (track->type == STREAM_SUB)
            return -opts->subs_rend->sub_delay;
    }
    return 0;
}
