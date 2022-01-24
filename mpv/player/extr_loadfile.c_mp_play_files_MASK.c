#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct playlist_entry {int dummy; } ;
struct MPContext {scalar_t__ stop_play; int /*<<< orphan*/ * encode_lavc_ctx; TYPE_1__* opts; TYPE_2__* playlist; } ;
struct TYPE_4__ {int current_was_replaced; struct playlist_entry* current; } ;
struct TYPE_3__ {int player_idle_mode; } ;

/* Variables and functions */
 scalar_t__ AT_END_OF_FILE ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 scalar_t__ PT_ERROR ; 
 scalar_t__ PT_NEXT_ENTRY ; 
 scalar_t__ PT_QUIT ; 
 scalar_t__ PT_STOP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC6 (struct MPContext*) ; 
 struct playlist_entry* FUNC7 (struct MPContext*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC9 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC10 (struct MPContext*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC12 (struct MPContext*) ; 

void FUNC13(struct MPContext *mpctx)
{
    // Wait for all scripts to load before possibly starting playback.
    if (!FUNC5(mpctx)) {
        FUNC0(mpctx, "Waiting for scripts...\n");
        while (!FUNC5(mpctx))
            FUNC6(mpctx);
        FUNC8(mpctx); // avoid lost wakeups during waiting
        FUNC0(mpctx, "Done loading scripts.\n");
    }

    FUNC10(mpctx, mpctx->playlist);

    for (;;) {
        FUNC1(mpctx->stop_play);
        FUNC4(mpctx);
        if (mpctx->stop_play == PT_QUIT)
            break;

        FUNC9(mpctx);
        if (mpctx->stop_play == PT_QUIT)
            break;

        struct playlist_entry *new_entry = mpctx->playlist->current;
        if (mpctx->stop_play == PT_NEXT_ENTRY || mpctx->stop_play == PT_ERROR ||
            mpctx->stop_play == AT_END_OF_FILE || mpctx->stop_play == PT_STOP)
        {
            new_entry = FUNC7(mpctx, +1, false, true);
        }

        mpctx->playlist->current = new_entry;
        mpctx->playlist->current_was_replaced = false;
        mpctx->stop_play = PT_STOP;

        if (!mpctx->playlist->current && mpctx->opts->player_idle_mode < 2)
            break;
    }

    FUNC2(mpctx);

    if (mpctx->encode_lavc_ctx) {
        // Make sure all streams get finished.
        FUNC11(mpctx);
        FUNC12(mpctx);

        if (!FUNC3(mpctx->encode_lavc_ctx))
            mpctx->stop_play = PT_ERROR;

        mpctx->encode_lavc_ctx = NULL;
    }
}