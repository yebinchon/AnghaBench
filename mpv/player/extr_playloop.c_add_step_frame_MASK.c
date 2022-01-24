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
struct MPContext {int step_frames; int /*<<< orphan*/  hrseek_active; int /*<<< orphan*/  vo_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPSEEK_BACKSTEP ; 
 int /*<<< orphan*/  MPSEEK_VERY_EXACT ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,int) ; 

void FUNC2(struct MPContext *mpctx, int dir)
{
    if (!mpctx->vo_chain)
        return;
    if (dir > 0) {
        mpctx->step_frames += 1;
        FUNC1(mpctx, false);
    } else if (dir < 0) {
        if (!mpctx->hrseek_active) {
            FUNC0(mpctx, MPSEEK_BACKSTEP, 0, MPSEEK_VERY_EXACT, 0);
            FUNC1(mpctx, true);
        }
    }
}