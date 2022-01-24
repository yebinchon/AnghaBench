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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  BME280_REGISTER_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bme280_t_fine ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC3(lua_State* L) {
	uint8_t buf[3];
	FUNC2(BME280_REGISTER_TEMP, 3, buf); // registers are P[3], T[3], H[2]
	uint32_t adc_T = (uint32_t)(((buf[0] << 16) | (buf[1] << 8) | buf[2]) >> 4);
	if (adc_T == 0x80000 || adc_T == 0xfffff)
		return 0;
	FUNC1(L, FUNC0(adc_T));
	FUNC1(L, bme280_t_fine);
	return 2;
}