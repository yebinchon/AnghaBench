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
struct MPContext {int dummy; } ;

/* Variables and functions */
 double FUNC0 (struct MPContext*,int) ; 

int FUNC1(struct MPContext *mpctx)
{
    double pos = FUNC0(mpctx, false);
    return pos < 0 ? -1 : pos * 100;
}