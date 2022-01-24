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
struct MPOpts {scalar_t__ term_osd_bar; scalar_t__ quiet; int /*<<< orphan*/  use_terminal; } ;
struct MPContext {int /*<<< orphan*/  log; scalar_t__ stop_play; int /*<<< orphan*/  playing; int /*<<< orphan*/  playing_msg_shown; int /*<<< orphan*/  playback_initialized; struct MPOpts* opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char**,int) ; 
 char* FUNC1 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC8 (struct MPContext*,int) ; 

__attribute__((used)) static void FUNC9(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;

    FUNC8(mpctx, false);
    FUNC7(mpctx);

    if (!opts->use_terminal)
        return;

    if (opts->quiet || !mpctx->playback_initialized ||
        !mpctx->playing_msg_shown || mpctx->stop_play)
    {
        if (!mpctx->playing || mpctx->stop_play) {
            FUNC2(mpctx->log);
            FUNC5(mpctx, "");
        }
        return;
    }

    char *line = FUNC1(mpctx);

    if (opts->term_osd_bar) {
        FUNC3(&line, "\n");
        int w = 80, h = 24;
        FUNC6(&w, &h);
        FUNC0(mpctx, &line, w);
    }

    FUNC5(mpctx, line);
    FUNC4(line);
}