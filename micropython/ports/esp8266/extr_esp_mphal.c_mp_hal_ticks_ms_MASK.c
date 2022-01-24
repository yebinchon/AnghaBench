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
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ system_time_high_word ; 
 scalar_t__ system_time_low_word ; 
 int /*<<< orphan*/  FUNC0 () ; 

uint32_t FUNC1(void) {
    // Compute milliseconds from 64-bit microsecond counter
    FUNC0();
    return ((uint64_t)system_time_high_word << 32 | (uint64_t)system_time_low_word) / 1000;
}