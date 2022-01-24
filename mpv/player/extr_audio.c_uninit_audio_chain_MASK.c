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
struct MPContext {int /*<<< orphan*/  audio_status; int /*<<< orphan*/ * ao_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_EVENT_AUDIO_RECONFIG ; 
 int /*<<< orphan*/  STATUS_EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct MPContext *mpctx)
{
    if (mpctx->ao_chain) {
        FUNC0(mpctx->ao_chain);
        mpctx->ao_chain = NULL;

        mpctx->audio_status = STATUS_EOF;

        FUNC1(mpctx, MPV_EVENT_AUDIO_RECONFIG, NULL);
    }
}