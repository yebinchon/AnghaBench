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
 int /*<<< orphan*/  GPIO_OUT_W1TC_ADDRESS ; 
 int /*<<< orphan*/  GPIO_OUT_W1TS_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ws2801_bit_clk ; 
 int /*<<< orphan*/  ws2801_bit_data ; 

__attribute__((used)) static void FUNC1(uint8_t n) {
    uint8_t bitmask;
    for (bitmask = 0x80; bitmask !=0 ; bitmask >>= 1) {
        if (n & bitmask) {
            FUNC0(GPIO_OUT_W1TS_ADDRESS, ws2801_bit_data);
        } else {
            FUNC0(GPIO_OUT_W1TC_ADDRESS, ws2801_bit_data);
        }
        FUNC0(GPIO_OUT_W1TS_ADDRESS, ws2801_bit_clk);
        FUNC0(GPIO_OUT_W1TC_ADDRESS, ws2801_bit_clk);
    }
}