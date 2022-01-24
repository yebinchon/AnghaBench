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
typedef  int uint16_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

uint16_t FUNC1(uint8_t reg)
{
	uint8_t low = FUNC0(reg);
	uint8_t high = FUNC0(++reg);

	return (high << 8) | low;
}