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
 float FUNC0 (float) ; 

__attribute__((used)) static float FUNC1(float *t)
{
	float sx = FUNC0(t[0]*t[0] + t[2]*t[2]);
	float sy = FUNC0(t[1]*t[1] + t[3]*t[3]);
	return (sx + sy) * 0.5f;
}