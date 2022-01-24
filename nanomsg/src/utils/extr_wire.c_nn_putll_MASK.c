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
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;

/* Variables and functions */

void FUNC0 (uint8_t *buf, uint64_t val)
{
    buf [0] = (uint8_t) ((val >> 56) & 0xff);
    buf [1] = (uint8_t) ((val >> 48) & 0xff);
    buf [2] = (uint8_t) ((val >> 40) & 0xff);
    buf [3] = (uint8_t) ((val >> 32) & 0xff);
    buf [4] = (uint8_t) ((val >> 24) & 0xff);
    buf [5] = (uint8_t) ((val >> 16) & 0xff);
    buf [6] = (uint8_t) ((val >> 8) & 0xff);
    buf [7] = (uint8_t) (val & 0xff);
}