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
 double const M_PI ; 
 scalar_t__ FUNC0 (double const) ; 

__attribute__((used)) static double FUNC1(const double x)
{
	return (0.42f+0.5f*(double)FUNC0(M_PI*x)+0.08f*(double)FUNC0(2.0f*M_PI*x));
}