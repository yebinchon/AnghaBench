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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 

uint16_t FUNC2(uint8_t sn) {
    uint16_t val = 0, val1 = 0;
    do {
        val1 = (FUNC1(FUNC0(sn)) << 8) | FUNC1(FUNC0(sn) + 1);
        if (val1 != 0) {
            val = (FUNC1(FUNC0(sn)) << 8) | FUNC1(FUNC0(sn) + 1);
        }
    } while (val != val1);
    return val;
}