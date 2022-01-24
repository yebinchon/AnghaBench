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
typedef  size_t int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENCODER_RESOLUTION ; 
 scalar_t__* encoder_LUT ; 
 int /*<<< orphan*/ * encoder_pulses ; 
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 int /*<<< orphan*/ * encoder_value ; 

__attribute__((used)) static void FUNC1(int8_t index, uint8_t state) {
    encoder_pulses[index] += encoder_LUT[state & 0xF];
    if (encoder_pulses[index] >= ENCODER_RESOLUTION) {
        encoder_value[index]++;
        FUNC0(index, true);
    }
    if (encoder_pulses[index] <= -ENCODER_RESOLUTION) {  // direction is arbitrary here, but this clockwise
        encoder_value[index]--;
        FUNC0(index, false);
    }
    encoder_pulses[index] %= ENCODER_RESOLUTION;
}