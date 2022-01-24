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
 int /*<<< orphan*/  FUNC0 (double) ; 
 scalar_t__ FUNC1 (int) ; 

LONG_DOUBLE FUNC2(const LONG_DOUBLE *series, size_t entries, size_t period) {
    if(FUNC1(period <= 0))
        return 0.0;

    size_t i, count;
    LONG_DOUBLE sum = 0, avg = 0;
    LONG_DOUBLE p[period];

    for(count = 0; count < period ; count++)
        p[count] = 0.0;

    for(i = 0, count = 0; i < entries; i++) {
        LONG_DOUBLE value = series[i];
        if(FUNC1(!FUNC0(value))) continue;

        if(FUNC1(count < period)) {
            sum += value;
            avg = (count == period - 1) ? sum / (LONG_DOUBLE)period : 0;
        }
        else {
            sum = sum - p[count % period] + value;
            avg = sum / (LONG_DOUBLE)period;
        }

        p[count % period] = value;
        count++;
    }

    return avg;
}