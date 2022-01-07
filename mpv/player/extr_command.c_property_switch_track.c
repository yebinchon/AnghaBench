
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct track {int user_tid; char* lang; int title; } ;
struct m_property_switch_arg {int inc; } ;
struct m_property {int dummy; } ;
typedef enum stream_type { ____Placeholder_stream_type } stream_type ;
struct TYPE_11__ {TYPE_1__* opts; int playback_initialized; struct track*** current_track; } ;
struct TYPE_10__ {int** stream_id; } ;
typedef TYPE_2__ MPContext ;


 int FLAG_MARK_SELECTION ;

 int M_PROPERTY_OK ;



 int mp_property_generic_option (TYPE_2__*,struct m_property*,int,void*) ;
 int mp_switch_track_n (TYPE_2__*,int,int,struct track*,int ) ;
 struct track* mp_track_by_tid (TYPE_2__*,int,int) ;
 int mp_wakeup_core (TYPE_2__*) ;
 int print_track_list (TYPE_2__*,char*) ;
 char* talloc_asprintf (int *,char*,int,char*,...) ;
 char* talloc_strdup (int *,char const*) ;
 struct track* track_next (TYPE_2__*,int,int,struct track*) ;

__attribute__((used)) static int property_switch_track(struct m_property *prop, int action, void *arg,
                                 MPContext *mpctx, int order,
                                 enum stream_type type)
{
    struct track *track = mpctx->current_track[order][type];

    switch (action) {
    case 131:
        if (mpctx->playback_initialized) {
            *(int *)arg = track ? track->user_tid : -2;
        } else {
            *(int *)arg = mpctx->opts->stream_id[order][type];
        }
        return M_PROPERTY_OK;
    case 130:
        if (track) {
            char *lang = track->lang;
            if (!lang)
                lang = "unknown";

            if (track->title) {
                *(char **)arg = talloc_asprintf(((void*)0), "(%d) %s (\"%s\")",
                                           track->user_tid, lang, track->title);
            } else {
                *(char **)arg = talloc_asprintf(((void*)0), "(%d) %s",
                                                track->user_tid, lang);
            }
        } else {
            const char *msg = "no";
            if (!mpctx->playback_initialized &&
                mpctx->opts->stream_id[order][type] == -1)
                msg = "auto";
            *(char **) arg = talloc_strdup(((void*)0), msg);
        }
        return M_PROPERTY_OK;

    case 128: {
        if (mpctx->playback_initialized) {
            struct m_property_switch_arg *sarg = arg;
            do {
                track = track_next(mpctx, type, sarg->inc >= 0 ? +1 : -1, track);
                mp_switch_track_n(mpctx, order, type, track, FLAG_MARK_SELECTION);
            } while (mpctx->current_track[order][type] != track);
            print_track_list(mpctx, "Track switched:");
        } else {


            mpctx->opts->stream_id[order][type] =
                mpctx->opts->stream_id[order][type] == -1 ? -2 : -1;
        }
        return M_PROPERTY_OK;
    }
    case 129:
        if (mpctx->playback_initialized) {
            track = mp_track_by_tid(mpctx, type, *(int *)arg);
            mp_switch_track_n(mpctx, order, type, track, FLAG_MARK_SELECTION);
            print_track_list(mpctx, "Track switched:");
            mp_wakeup_core(mpctx);
        } else {
            mpctx->opts->stream_id[order][type] = *(int *)arg;
        }
        return M_PROPERTY_OK;
    }
    return mp_property_generic_option(mpctx, prop, action, arg);
}
