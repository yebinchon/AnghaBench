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
struct MPContext {int osd_function; scalar_t__ step_frames; scalar_t__ paused; TYPE_1__* opts; scalar_t__ paused_for_cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  pause; } ;

/* Variables and functions */
 int OSD_CLOCK ; 
 int OSD_PAUSE ; 
 int OSD_PLAY ; 
 scalar_t__ FUNC0 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int) ; 

void FUNC2(struct MPContext *mpctx, char *buf, size_t buf_size)
{
    int sym = mpctx->osd_function;
    if (!sym) {
        if (FUNC0(mpctx) || (mpctx->paused_for_cache && !mpctx->opts->pause)) {
            sym = OSD_CLOCK;
        } else if (mpctx->paused || mpctx->step_frames) {
            sym = OSD_PAUSE;
        } else {
            sym = OSD_PLAY;
        }
    }
    FUNC1(buf, buf_size, sym);
}