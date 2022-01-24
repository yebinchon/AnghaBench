#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct osd_state {int dummy; } ;
struct MPOpts {int osd_level; int /*<<< orphan*/  video_osd; } ;
struct TYPE_2__ {int type; } ;
struct MPContext {int osd_force_update; int osd_idle_update; double osd_last_update; double osd_visible; double osd_function_visible; scalar_t__ osd_msg_next_duration; scalar_t__ osd_msg_visible; char* osd_msg_text; int osd_show_pos; TYPE_1__ osd_progbar; scalar_t__ osd_function; struct osd_state* osd; struct MPOpts* opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,int /*<<< orphan*/ ,int) ; 
 int OSD_BAR_SEEK ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 
 double FUNC2 (struct MPContext*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*,double) ; 
 double FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct osd_state*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct osd_state*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char**,struct MPContext*,int) ; 
 char* FUNC8 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC11 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC13 (struct MPContext*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC14(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    struct osd_state *osd = mpctx->osd;

    double now = FUNC4();

    if (!mpctx->osd_force_update) {
        // Assume nothing is going on at all.
        if (!mpctx->osd_idle_update)
            return;

        double delay = 0.050; // update the OSD at most this often
        double diff = now - mpctx->osd_last_update;
        if (diff < delay) {
            FUNC3(mpctx, delay - diff);
            return;
        }
    }
    mpctx->osd_force_update = false;
    mpctx->osd_idle_update = false;
    mpctx->osd_last_update = now;

    if (mpctx->osd_visible) {
        double sleep = mpctx->osd_visible - now;
        if (sleep > 0) {
            FUNC3(mpctx, sleep);
            mpctx->osd_idle_update = true;
        } else {
            mpctx->osd_visible = 0;
            mpctx->osd_progbar.type = -1; // disable
            FUNC5(mpctx->osd, &mpctx->osd_progbar);
        }
    }

    if (mpctx->osd_function_visible) {
        double sleep = mpctx->osd_function_visible - now;
        if (sleep > 0) {
            FUNC3(mpctx, sleep);
            mpctx->osd_idle_update = true;
        } else {
            mpctx->osd_function_visible = 0;
            mpctx->osd_function = 0;
        }
    }

    if (mpctx->osd_msg_next_duration > 0) {
        // This is done to avoid cutting the OSD message short if slow commands
        // are executed between setting the OSD message and showing it.
        mpctx->osd_msg_visible = now + mpctx->osd_msg_next_duration;
        mpctx->osd_msg_next_duration = 0;
    }

    if (mpctx->osd_msg_visible) {
        double sleep = mpctx->osd_msg_visible - now;
        if (sleep > 0) {
            FUNC3(mpctx, sleep);
            mpctx->osd_idle_update = true;
        } else {
            FUNC9(mpctx->osd_msg_text);
            mpctx->osd_msg_text = NULL;
            mpctx->osd_msg_visible = 0;
            mpctx->osd_show_pos = false;
        }
    }

    FUNC1(mpctx);

    if (mpctx->osd_progbar.type == OSD_BAR_SEEK) {
        double pos = FUNC2(mpctx, false);
        FUNC13(mpctx, OSD_BAR_SEEK, 0, 1, FUNC0(pos, 0, 1));
    }

    FUNC11(mpctx, mpctx->osd_msg_text);
    FUNC10(mpctx);
    FUNC12(mpctx);

    if (!opts->video_osd)
        return;

    int osd_level = opts->osd_level;
    if (mpctx->osd_show_pos)
        osd_level = 3;

    char *text = NULL;
    FUNC7(&text, mpctx, osd_level);
    if (mpctx->osd_msg_text && mpctx->osd_msg_text[0]) {
        text = FUNC8(text, "%s%s", text ? "\n" : "",
                                      mpctx->osd_msg_text);
    }
    FUNC6(osd, text);
    FUNC9(text);
}