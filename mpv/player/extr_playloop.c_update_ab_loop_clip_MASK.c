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
struct MPContext {int ab_loop_clip; double play_dir; } ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 scalar_t__ FUNC0 (struct MPContext*,double*) ; 
 double FUNC1 (struct MPContext*) ; 

void FUNC2(struct MPContext *mpctx)
{
    double pts = FUNC1(mpctx);
    double ab[2];
    mpctx->ab_loop_clip = pts != MP_NOPTS_VALUE &&
                          FUNC0(mpctx, ab) &&
                          pts * mpctx->play_dir <= ab[1] * mpctx->play_dir;
}