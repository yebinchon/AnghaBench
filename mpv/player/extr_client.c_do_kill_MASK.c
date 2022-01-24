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
struct track {int dummy; } ;
struct MPContext {int /*<<< orphan*/  error_playing; TYPE_1__* vo_chain; } ;
struct TYPE_2__ {struct track* track; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_ERROR_VO_INIT_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,struct track*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 

__attribute__((used)) static void FUNC2(void *ptr)
{
    struct MPContext *mpctx = ptr;

    struct track *track = mpctx->vo_chain ? mpctx->vo_chain->track : NULL;
    FUNC1(mpctx);
    if (track) {
        mpctx->error_playing = MPV_ERROR_VO_INIT_FAILED;
        FUNC0(mpctx, track);
    }
}