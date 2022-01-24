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
typedef  int const LONG_DOUBLE ;

/* Variables and functions */
 int const NAN ; 
 int* FUNC0 (int const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int FUNC2 (int const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int const*,size_t) ; 
 scalar_t__ FUNC4 (int) ; 

LONG_DOUBLE FUNC5(const LONG_DOUBLE *series, size_t entries) {
    if(FUNC4(entries == 0)) return NAN;
    if(FUNC4(entries == 1)) return series[0];

    if(FUNC4(entries == 2))
        return (series[0] + series[1]) / 2;

    LONG_DOUBLE *copy = FUNC0(series, entries);
    FUNC3(copy, entries);

    LONG_DOUBLE avg = FUNC2(copy, entries);

    FUNC1(copy);
    return avg;
}