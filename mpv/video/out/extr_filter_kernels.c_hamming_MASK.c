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
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 double M_PI ; 
 double FUNC0 (double) ; 

__attribute__((used)) static double FUNC1(params *p, double x)
{
    return 0.54 + 0.46 * FUNC0(M_PI * x);
}