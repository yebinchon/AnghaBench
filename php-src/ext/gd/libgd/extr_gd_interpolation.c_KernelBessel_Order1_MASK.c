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

/* Variables and functions */
 double FUNC0 (double) ; 
 float FUNC1 (double) ; 
 float FUNC2 (double) ; 
 double M_PI ; 
 float FUNC3 (double) ; 
 float FUNC4 (double) ; 
 float FUNC5 (float) ; 

__attribute__((used)) static double FUNC6(double x)
{
	double p, q;

	if (x == 0.0)
		return (0.0f);
	p = x;
	if (x < 0.0)
		x=(-x);
	if (x < 8.0)
		return (p*FUNC0(x));
	q = (double)FUNC5(2.0f/(M_PI*x))*(double)(FUNC1(x)*(1.0f/FUNC5(2.0f)*(FUNC4(x)-FUNC3(x)))-8.0f/x*FUNC2(x)*
		(-1.0f/FUNC5(2.0f)*(FUNC4(x)+FUNC3(x))));
	if (p < 0.0f)
		q = (-q);
	return (q);
}