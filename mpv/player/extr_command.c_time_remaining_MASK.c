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
typedef  int /*<<< orphan*/  MPContext ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 double FUNC0 (int /*<<< orphan*/ *) ; 
 double FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(MPContext *mpctx, double *remaining)
{
    double len = FUNC1(mpctx);
    double playback = FUNC0(mpctx);

    if (playback == MP_NOPTS_VALUE || len <= 0)
        return false;

    *remaining = len - playback;

    return len >= 0;
}