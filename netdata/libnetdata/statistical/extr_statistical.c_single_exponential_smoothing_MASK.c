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
typedef  double LONG_DOUBLE ;

/* Variables and functions */
 double NAN ; 
 int /*<<< orphan*/  FUNC0 (double const) ; 
 double default_single_exponential_smoothing_alpha ; 
 int FUNC1 (double) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

LONG_DOUBLE FUNC4(const LONG_DOUBLE *series, size_t entries, LONG_DOUBLE alpha) {
    if(FUNC3(entries == 0))
        return NAN;

    if(FUNC3(FUNC1(alpha)))
        alpha = default_single_exponential_smoothing_alpha;

    const LONG_DOUBLE *value = series, *end = &series[entries];
    LONG_DOUBLE level = (1.0 - alpha) * (*value);

    for(value++ ; value < end; value++) {
        if(FUNC2(FUNC0(*value)))
            level = alpha * (*value) + (1.0 - alpha) * level;
    }

    return level;
}