#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double W; } ;

/* Variables and functions */
 TYPE_1__ oldrs ; 
 double FUNC0 (TYPE_1__*,double,int) ; 

double
FUNC1(double t, int n, double *stateptr)
{
	double		result;

	oldrs.W = *stateptr;
	result = FUNC0(&oldrs, t, n);
	*stateptr = oldrs.W;
	return result;
}