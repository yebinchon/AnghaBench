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
struct dec_sub {int dummy; } ;
struct MPContext {int num_tracks; TYPE_1__** tracks; } ;
struct TYPE_2__ {struct dec_sub* d_sub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dec_sub*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,int /*<<< orphan*/ *) ; 

void FUNC2(struct MPContext *mpctx)
{
    for (int n = 0; n < mpctx->num_tracks; n++) {
        struct dec_sub *d_sub = mpctx->tracks[n]->d_sub;
        if (d_sub)
            FUNC0(d_sub);
    }
    FUNC1(mpctx, NULL);
}