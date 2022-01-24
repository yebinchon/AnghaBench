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
 float FUNC0 (float,float) ; 
 float FUNC1 (float,float) ; 

__attribute__((used)) static void FUNC2(float* dst,
							float ax, float ay, float aw, float ah,
							float bx, float by, float bw, float bh)
{
	float minx = FUNC0(ax, bx);
	float miny = FUNC0(ay, by);
	float maxx = FUNC1(ax+aw, bx+bw);
	float maxy = FUNC1(ay+ah, by+bh);
	dst[0] = minx;
	dst[1] = miny;
	dst[2] = FUNC0(0.0f, maxx - minx);
	dst[3] = FUNC0(0.0f, maxy - miny);
}