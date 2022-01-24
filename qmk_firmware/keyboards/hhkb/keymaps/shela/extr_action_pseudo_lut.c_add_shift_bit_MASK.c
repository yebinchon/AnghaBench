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
typedef  int uint16_t ;

/* Variables and functions */
 int SHIFT_BIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int* send_key_shift_bit ; 

void FUNC1(uint16_t keycode) {
    if ((keycode >> 3) < SHIFT_BIT_SIZE) {
        send_key_shift_bit[keycode >> 3] |= (1 << (keycode & 7));
    } else {
        FUNC0("add_shift_bit: Can't add shift bit. keycode: %02X\n", keycode);
    }
}