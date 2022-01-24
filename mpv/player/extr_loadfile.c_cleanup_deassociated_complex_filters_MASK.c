#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct track {int selected; TYPE_1__* dec; scalar_t__ ao_c; scalar_t__ vo_c; scalar_t__ sink; } ;
struct MPContext {int num_tracks; TYPE_3__* ao_chain; TYPE_2__* vo_chain; struct track** tracks; } ;
struct TYPE_6__ {int /*<<< orphan*/  filter_src; int /*<<< orphan*/  dec_src; } ;
struct TYPE_5__ {int /*<<< orphan*/  filter_src; int /*<<< orphan*/  dec_src; } ;
struct TYPE_4__ {int /*<<< orphan*/  f; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 

__attribute__((used)) static void FUNC3(struct MPContext *mpctx)
{
    for (int n = 0; n < mpctx->num_tracks; n++) {
        struct track *track = mpctx->tracks[n];
        if (!(track->sink || track->vo_c || track->ao_c)) {
            if (track->dec && !track->vo_c && !track->ao_c) {
                FUNC0(track->dec->f);
                track->dec = NULL;
            }
            track->selected = false;
        }
    }

    if (mpctx->vo_chain && !mpctx->vo_chain->dec_src &&
        !mpctx->vo_chain->filter_src)
    {
        FUNC2(mpctx);
    }
    if (mpctx->ao_chain && !mpctx->ao_chain->dec_src &&
        !mpctx->ao_chain->filter_src)
    {
        FUNC1(mpctx);
    }
}