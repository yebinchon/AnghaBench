#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct track {int user_tid; char* lang; int /*<<< orphan*/  title; } ;
struct m_property_switch_arg {int /*<<< orphan*/  inc; } ;
struct m_property {int dummy; } ;
typedef  enum stream_type { ____Placeholder_stream_type } stream_type ;
struct TYPE_11__ {TYPE_1__* opts; int /*<<< orphan*/  playback_initialized; struct track*** current_track; } ;
struct TYPE_10__ {int** stream_id; } ;
typedef  TYPE_2__ MPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_MARK_SELECTION ; 
#define  M_PROPERTY_GET 131 
 int M_PROPERTY_OK ; 
#define  M_PROPERTY_PRINT 130 
#define  M_PROPERTY_SET 129 
#define  M_PROPERTY_SWITCH 128 
 int FUNC0 (TYPE_2__*,struct m_property*,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int,struct track*,int /*<<< orphan*/ ) ; 
 struct track* FUNC2 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,int,char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 struct track* FUNC7 (TYPE_2__*,int,int,struct track*) ; 

__attribute__((used)) static int FUNC8(struct m_property *prop, int action, void *arg,
                                 MPContext *mpctx, int order,
                                 enum stream_type type)
{
    struct track *track = mpctx->current_track[order][type];

    switch (action) {
    case M_PROPERTY_GET:
        if (mpctx->playback_initialized) {
            *(int *)arg = track ? track->user_tid : -2;
        } else {
            *(int *)arg = mpctx->opts->stream_id[order][type];
        }
        return M_PROPERTY_OK;
    case M_PROPERTY_PRINT:
        if (track) {
            char *lang = track->lang;
            if (!lang)
                lang = "unknown";

            if (track->title) {
                *(char **)arg = FUNC5(NULL, "(%d) %s (\"%s\")",
                                           track->user_tid, lang, track->title);
            } else {
                *(char **)arg = FUNC5(NULL, "(%d) %s",
                                                track->user_tid, lang);
            }
        } else {
            const char *msg = "no";
            if (!mpctx->playback_initialized &&
                mpctx->opts->stream_id[order][type] == -1)
                msg = "auto";
            *(char **) arg = FUNC6(NULL, msg);
        }
        return M_PROPERTY_OK;

    case M_PROPERTY_SWITCH: {
        if (mpctx->playback_initialized) {
            struct m_property_switch_arg *sarg = arg;
            do {
                track = FUNC7(mpctx, type, sarg->inc >= 0 ? +1 : -1, track);
                FUNC1(mpctx, order, type, track, FLAG_MARK_SELECTION);
            } while (mpctx->current_track[order][type] != track);
            FUNC4(mpctx, "Track switched:");
        } else {
            // Simply cycle between "no" and "auto". It's possible that this does
            // not always do what the user means, but keep the complexity low.
            mpctx->opts->stream_id[order][type] =
                mpctx->opts->stream_id[order][type] == -1 ? -2 : -1;
        }
        return M_PROPERTY_OK;
    }
    case M_PROPERTY_SET:
        if (mpctx->playback_initialized) {
            track = FUNC2(mpctx, type, *(int *)arg);
            FUNC1(mpctx, order, type, track, FLAG_MARK_SELECTION);
            FUNC4(mpctx, "Track switched:");
            FUNC3(mpctx);
        } else {
            mpctx->opts->stream_id[order][type] = *(int *)arg;
        }
        return M_PROPERTY_OK;
    }
    return FUNC0(mpctx, prop, action, arg);
}