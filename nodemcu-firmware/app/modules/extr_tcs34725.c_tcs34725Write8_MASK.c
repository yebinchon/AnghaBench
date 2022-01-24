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
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_TRANSMITTER ; 
 int /*<<< orphan*/  TCS34725_ADDRESS ; 
 int /*<<< orphan*/  TCS34725_BUS_ID ; 
 int TCS34725_COMMAND_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

uint8_t FUNC4 (uint8_t reg, uint8_t value)
{
	FUNC2(TCS34725_BUS_ID);
	FUNC0(TCS34725_BUS_ID, TCS34725_ADDRESS, PLATFORM_I2C_DIRECTION_TRANSMITTER);
	FUNC1(TCS34725_BUS_ID, TCS34725_COMMAND_BIT | reg );
	FUNC1(TCS34725_BUS_ID, value);
	FUNC3(TCS34725_BUS_ID);
	return 0;
}