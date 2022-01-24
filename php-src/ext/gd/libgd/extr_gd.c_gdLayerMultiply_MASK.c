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
 int gdAlphaMax ; 
 int gdBlueMax ; 
 int gdGreenMax ; 
 int gdRedMax ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

int FUNC4 (int dst, int src)
{
	int a1, a2, r1, r2, g1, g2, b1, b2;
	a1 = gdAlphaMax - FUNC0(src);
	a2 = gdAlphaMax - FUNC0(dst);

	r1 = gdRedMax - (a1 * (gdRedMax - FUNC3(src))) / gdAlphaMax;
	r2 = gdRedMax - (a2 * (gdRedMax - FUNC3(dst))) / gdAlphaMax;
	g1 = gdGreenMax - (a1 * (gdGreenMax - FUNC2(src))) / gdAlphaMax;
	g2 = gdGreenMax - (a2 * (gdGreenMax - FUNC2(dst))) / gdAlphaMax;
	b1 = gdBlueMax - (a1 * (gdBlueMax - FUNC1(src))) / gdAlphaMax;
	b2 = gdBlueMax - (a2 * (gdBlueMax - FUNC1(dst))) / gdAlphaMax ;

	a1 = gdAlphaMax - a1;
	a2 = gdAlphaMax - a2;
	return ( ((a1*a2/gdAlphaMax) << 24) +
			 ((r1*r2/gdRedMax) << 16) +
			 ((g1*g2/gdGreenMax) << 8) +
			 ((b1*b2/gdBlueMax))
		);
}