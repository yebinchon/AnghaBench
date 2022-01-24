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
 int /*<<< orphan*/  FUNC0 (int,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  owDefaultPower ; 

void FUNC1(uint8_t pin, const uint8_t rom[8])
{
    uint8_t i;

    FUNC0(pin, 0x55, owDefaultPower);           // Choose ROM

    for (i = 0; i < 8; i++) FUNC0(pin, rom[i], owDefaultPower);
}