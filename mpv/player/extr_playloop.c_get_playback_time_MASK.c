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
struct MPContext {double playback_pts; } ;

/* Variables and functions */
 double FUNC0 (double,int /*<<< orphan*/ ,double) ; 
 double MP_NOPTS_VALUE ; 
 double FUNC1 (struct MPContext*) ; 
 double FUNC2 (struct MPContext*) ; 

double FUNC3(struct MPContext *mpctx)
{
    double cur = FUNC1(mpctx);
    if (cur == MP_NOPTS_VALUE)
        return cur;
    // During seeking, the time corresponds to the last seek time - apply some
    // cosmetics to it.
    if (mpctx->playback_pts == MP_NOPTS_VALUE) {
        double length = FUNC2(mpctx);
        if (length >= 0)
            cur = FUNC0(cur, 0, length);
    }
    return cur;
}