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
struct MPOpts {double osd_duration; } ;
struct MPContext {int osd_function; int osd_force_update; scalar_t__ osd_function_visible; struct MPOpts* opts; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 

void FUNC2(struct MPContext *mpctx, int osd_function)
{
    struct MPOpts *opts = mpctx->opts;

    mpctx->osd_function = osd_function;
    mpctx->osd_function_visible = FUNC0() + opts->osd_duration / 1000.0;
    mpctx->osd_force_update = true;
    FUNC1(mpctx);
}