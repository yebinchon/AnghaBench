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
typedef  int uint32_t ;

/* Variables and functions */

uint8_t FUNC0(uint32_t bits) {
    uint8_t n = 0;
    if (bits >> 16) {
        bits >>= 16;
        n += 16;
    }
    if (bits >> 8) {
        bits >>= 8;
        n += 8;
    }
    if (bits >> 4) {
        bits >>= 4;
        n += 4;
    }
    if (bits >> 2) {
        bits >>= 2;
        n += 2;
    }
    if (bits >> 1) {
        bits >>= 1;
        n += 1;
    }
    return n;
}