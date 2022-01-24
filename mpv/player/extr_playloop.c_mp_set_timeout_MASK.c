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
struct MPContext {double sleeptime; int /*<<< orphan*/  dispatch; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct MPContext *mpctx, double sleeptime)
{
    if (mpctx->sleeptime > sleeptime) {
        mpctx->sleeptime = sleeptime;
        int64_t abstime = FUNC0(FUNC2(), sleeptime);
        FUNC1(mpctx->dispatch, abstime);
    }
}