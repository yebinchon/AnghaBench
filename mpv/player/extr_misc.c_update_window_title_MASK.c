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
struct MPContext {char* last_window_title; scalar_t__ ao; scalar_t__ video_out; TYPE_1__* opts; } ;
struct TYPE_2__ {int /*<<< orphan*/  wintitle; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOCONTROL_UPDATE_STREAM_TITLE ; 
 int /*<<< orphan*/  VOCTRL_UPDATE_WINDOW_TITLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (struct MPContext*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,char*) ; 

void FUNC6(struct MPContext *mpctx, bool force)
{
    if (!mpctx->video_out && !mpctx->ao) {
        FUNC3(mpctx->last_window_title);
        mpctx->last_window_title = NULL;
        return;
    }
    char *title = FUNC1(mpctx, mpctx->opts->wintitle);
    if (!mpctx->last_window_title || force ||
        FUNC2(title, mpctx->last_window_title) != 0)
    {
        FUNC3(mpctx->last_window_title);
        mpctx->last_window_title = FUNC4(mpctx, title);

        if (mpctx->video_out)
            FUNC5(mpctx->video_out, VOCTRL_UPDATE_WINDOW_TITLE, title);

        if (mpctx->ao) {
            FUNC0(mpctx->ao, AOCONTROL_UPDATE_STREAM_TITLE, title);
        }
    } else {
        FUNC3(title);
    }
}