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
 int /*<<< orphan*/  FUNC0 (float*,float const*,int) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*) ; 

void FUNC2(float* t, const float* s)
{
	float s2[6];
	FUNC0(s2, s, sizeof(float)*6);
	FUNC1(s2, t);
	FUNC0(t, s2, sizeof(float)*6);
}