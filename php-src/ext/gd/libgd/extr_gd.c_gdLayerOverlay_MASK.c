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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdBlueMax ; 
 int /*<<< orphan*/  gdGreenMax ; 
 int /*<<< orphan*/  gdRedMax ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5 (int dst, int src)
{
	int a1, a2;
	a1 = gdAlphaMax - FUNC1(dst);
	a2 = gdAlphaMax - FUNC1(src);
	return ( ((gdAlphaMax - a1*a2/gdAlphaMax) << 24) +
		(FUNC0( FUNC4(src), FUNC4(dst), gdRedMax ) << 16) +
		(FUNC0( FUNC3(src), FUNC3(dst), gdGreenMax ) << 8) +
		(FUNC0( FUNC2(src), FUNC2(dst), gdBlueMax ))
		);
}