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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

void FUNC1(uint32_t *Address, uint32_t Value) {
    uint16_t p = (const uint32_t)Address;
    FUNC0(p, (uint8_t)Value);
    FUNC0(p + 1, (uint8_t)(Value >> 8));
    FUNC0(p + 2, (uint8_t)(Value >> 16));
    FUNC0(p + 3, (uint8_t)(Value >> 24));
}