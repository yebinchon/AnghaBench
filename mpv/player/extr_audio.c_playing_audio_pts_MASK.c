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
struct MPContext {double audio_speed; int /*<<< orphan*/  ao; } ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 double FUNC1 (struct MPContext*) ; 

double FUNC2(struct MPContext *mpctx)
{
    double pts = FUNC1(mpctx);
    if (pts == MP_NOPTS_VALUE || !mpctx->ao)
        return pts;
    return pts - mpctx->audio_speed * FUNC0(mpctx->ao);
}