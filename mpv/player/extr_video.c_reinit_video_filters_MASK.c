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
struct vo_chain {int dummy; } ;
struct MPContext {struct vo_chain* vo_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_EVENT_VIDEO_RECONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 

int FUNC3(struct MPContext *mpctx)
{
    struct vo_chain *vo_c = mpctx->vo_chain;

    if (!vo_c)
        return 0;

    if (!FUNC2(mpctx))
        return -1;

    FUNC0(mpctx);

    FUNC1(mpctx, MPV_EVENT_VIDEO_RECONFIG, NULL);

    return 0;
}