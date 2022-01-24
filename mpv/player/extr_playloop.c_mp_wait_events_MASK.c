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
struct MPContext {scalar_t__ sleeptime; int /*<<< orphan*/  dispatch; } ;

/* Variables and functions */
 scalar_t__ INFINITY ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(struct MPContext *mpctx)
{
    bool sleeping = mpctx->sleeptime > 0;
    if (sleeping)
        FUNC0(mpctx, "start sleep");

    FUNC1(mpctx->dispatch, mpctx->sleeptime);

    mpctx->sleeptime = INFINITY;

    if (sleeping)
        FUNC0(mpctx, "end sleep");
}