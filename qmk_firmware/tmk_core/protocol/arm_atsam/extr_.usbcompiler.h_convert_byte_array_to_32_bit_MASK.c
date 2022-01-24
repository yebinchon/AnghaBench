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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */

__attribute__((used)) static inline uint32_t FUNC0(uint8_t *data) {
    union {
        uint32_t u32;
        uint8_t  u8[4];
    } long_addr;

    uint8_t index;

    for (index = 0; index < 4; index++) {
        long_addr.u8[index] = *data++;
    }

    return long_addr.u32;
}