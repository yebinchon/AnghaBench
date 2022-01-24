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
struct MPContext {int /*<<< orphan*/  video_status; int /*<<< orphan*/ * vo_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_EVENT_VIDEO_RECONFIG ; 
 int /*<<< orphan*/  STATUS_EOF ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct MPContext *mpctx)
{
    if (mpctx->vo_chain) {
        FUNC1(mpctx);
        FUNC2(mpctx->vo_chain);
        mpctx->vo_chain = NULL;

        mpctx->video_status = STATUS_EOF;

        FUNC0(mpctx, MPV_EVENT_VIDEO_RECONFIG, NULL);
    }
}