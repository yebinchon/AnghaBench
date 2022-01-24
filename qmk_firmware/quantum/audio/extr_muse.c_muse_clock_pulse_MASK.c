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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * muse_interval ; 
 int /*<<< orphan*/ * muse_theme ; 
 int muse_timer_1bit ; 
 int muse_timer_2bit ; 
 int muse_timer_2bit_counter ; 
 int muse_timer_31bit ; 
 int muse_timer_4bit ; 
 int* number_of_ones_to_bool ; 

uint8_t FUNC1(void) {
    bool top = number_of_ones_to_bool[FUNC0(muse_theme[0]) + (FUNC0(muse_theme[1]) << 1) + (FUNC0(muse_theme[2]) << 2) + (FUNC0(muse_theme[3]) << 3)];

    if (muse_timer_1bit == 0) {
        if (muse_timer_2bit_counter == 0) {
            muse_timer_2bit = (muse_timer_2bit + 1) % 4;
        }
        muse_timer_2bit_counter = (muse_timer_2bit_counter + 1) % 3;
        muse_timer_4bit         = (muse_timer_4bit + 1) % 16;
        muse_timer_31bit        = (muse_timer_31bit << 1) + top;
    }

    muse_timer_1bit = (muse_timer_1bit + 1) % 2;

    return FUNC0(muse_interval[0]) + (FUNC0(muse_interval[1]) << 1) + (FUNC0(muse_interval[2]) << 2) + (FUNC0(muse_interval[3]) << 3);
}