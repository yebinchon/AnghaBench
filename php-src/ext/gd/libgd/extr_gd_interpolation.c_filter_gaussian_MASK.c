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

__attribute__((used)) static double FUNC1(const double x)
{
	/* return(exp((double) (-2.0 * x * x)) * sqrt(2.0 / M_PI)); */
	return (double)(FUNC0(-2.0f * x * x) * 0.79788456080287f);
}