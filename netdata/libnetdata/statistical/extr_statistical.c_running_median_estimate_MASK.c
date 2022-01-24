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
typedef  float LONG_DOUBLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 float FUNC1 (float,float) ; 
 scalar_t__ FUNC2 (int) ; 

LONG_DOUBLE FUNC3(const LONG_DOUBLE *series, size_t entries) {
    LONG_DOUBLE median = 0.0f;
    LONG_DOUBLE average = 0.0f;
    size_t i;

    for(i = 0; i < entries ; i++) {
        LONG_DOUBLE value = series[i];
        if(FUNC2(!FUNC0(value))) continue;

        average += ( value - average ) * 0.1f; // rough running average.
        median += FUNC1( average * 0.01, value - median );
    }

    return median;
}