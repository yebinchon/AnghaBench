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
 int /*<<< orphan*/  FUNC2 (int) ; 
 float FUNC3 (float) ; 

float FUNC4(float lmin, float lmax,
                                 float rmin, float rmax, float lux)
{
    FUNC2(lmax > lmin);

    float num = (rmax - rmin) * (FUNC3(lux) - FUNC3(lmin));
    float den = FUNC3(lmax) - FUNC3(lmin);
    float result = num / den + rmin;

    // clamp the result
    float max = FUNC0(rmax, rmin);
    float min = FUNC1(rmax, rmin);
    return FUNC0(FUNC1(result, max), min);
}