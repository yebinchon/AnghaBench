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
struct mp_abort_entry {scalar_t__ coupled_to_playback; } ;
struct MPContext {scalar_t__ abort_all; int /*<<< orphan*/  playback_abort; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,struct mp_abort_entry*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct MPContext *mpctx,
                             struct mp_abort_entry *abort)
{
    if ((abort->coupled_to_playback && FUNC1(mpctx->playback_abort)) ||
        mpctx->abort_all)
    {
        FUNC0(mpctx, abort);
    }
}