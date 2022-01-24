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
struct ao_chain {int /*<<< orphan*/  ao; } ;
struct MPOpts {double softvol_volume; int softvol_mute; } ;
struct MPContext {struct ao_chain* ao_chain; struct MPOpts* opts; } ;

/* Variables and functions */
 float FUNC0 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float) ; 
 float FUNC2 (struct MPContext*) ; 
 float FUNC3 (float,int) ; 

void FUNC4(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    struct ao_chain *ao_c = mpctx->ao_chain;
    if (!ao_c || !ao_c->ao)
        return;

    float gain = FUNC0(opts->softvol_volume / 100.0, 0);
    gain = FUNC3(gain, 3);
    gain *= FUNC2(mpctx);
    if (opts->softvol_mute == 1)
        gain = 0.0;

    FUNC1(ao_c->ao, gain);
}