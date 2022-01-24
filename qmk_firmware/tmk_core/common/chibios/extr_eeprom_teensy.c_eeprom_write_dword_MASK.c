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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

void FUNC1(uint32_t *addr, uint32_t value) {
    uint8_t *p = (uint8_t *)addr;
    FUNC0(p++, value);
    FUNC0(p++, value >> 8);
    FUNC0(p++, value >> 16);
    FUNC0(p, value >> 24);
}