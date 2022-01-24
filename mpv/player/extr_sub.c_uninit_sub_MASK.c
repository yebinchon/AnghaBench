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
struct track {int /*<<< orphan*/ * d_sub; } ;
struct MPContext {int /*<<< orphan*/  osd; } ;

/* Variables and functions */
 int FUNC0 (struct MPContext*,struct track*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,struct track*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5(struct MPContext *mpctx, struct track *track)
{
    if (track && track->d_sub) {
        FUNC2(mpctx, track);
        FUNC4(track->d_sub, false);
        int order = FUNC0(mpctx, track);
        FUNC1(mpctx->osd, order, NULL);
        FUNC3(track->d_sub);
        track->d_sub = NULL;
    }
}