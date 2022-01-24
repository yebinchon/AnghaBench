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
struct MPContext {double last_time; } ;
typedef  double int64_t ;

/* Variables and functions */
 double FUNC0 () ; 

double FUNC1(struct MPContext *mpctx)
{
    int64_t new_time = FUNC0();
    int64_t delta = new_time - mpctx->last_time;
    mpctx->last_time = new_time;
    return delta * 0.000001;
}