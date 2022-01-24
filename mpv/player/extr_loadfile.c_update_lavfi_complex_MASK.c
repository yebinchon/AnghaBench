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
struct MPContext {scalar_t__ playback_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPSEEK_EXACT ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct MPContext*,int) ; 

void FUNC2(struct MPContext *mpctx)
{
    if (mpctx->playback_initialized) {
        if (FUNC1(mpctx, false) != 0)
            FUNC0(mpctx, MPSEEK_EXACT);
    }
}