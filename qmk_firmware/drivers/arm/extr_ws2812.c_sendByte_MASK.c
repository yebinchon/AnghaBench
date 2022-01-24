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
 int /*<<< orphan*/  RGB_DI_PIN ; 
 int /*<<< orphan*/  T0H ; 
 int /*<<< orphan*/  T0L ; 
 int /*<<< orphan*/  T1H ; 
 int /*<<< orphan*/  T1L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t byte) {
    // WS2812 protocol wants most significant bits first
    for (unsigned char bit = 0; bit < 8; bit++) {
        bool is_one = byte & (1 << (7 - bit));
        // using something like wait_ns(is_one ? T1L : T0L) here throws off timings
        if (is_one) {
            // 1
            FUNC1(RGB_DI_PIN);
            FUNC0(T1H);
            FUNC2(RGB_DI_PIN);
            FUNC0(T1L);
        } else {
            // 0
            FUNC1(RGB_DI_PIN);
            FUNC0(T0H);
            FUNC2(RGB_DI_PIN);
            FUNC0(T0L);
        }
    }
}