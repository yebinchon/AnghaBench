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
 float FUNC0 (float,float,float) ; 

__attribute__((used)) static inline float FUNC1(float min, float max, float x)
{
	x = FUNC0((x - min) / (max - min), 0.0f, 1.0f);
	return x * x * (3 - 2 * x);
}