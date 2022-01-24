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
 int /*<<< orphan*/  BME280_REGISTER_PRESS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC4(lua_State* L) {
	uint8_t buf[6];
	FUNC3(BME280_REGISTER_PRESS, 6, buf); // registers are P[3], T[3], H[2]
	uint32_t adc_T = (uint32_t)(((buf[3] << 16) | (buf[4] << 8) | buf[5]) >> 4);
	uint32_t T = FUNC1(adc_T);
	uint32_t adc_P = (uint32_t)(((buf[0] << 16) | (buf[1] << 8) | buf[2]) >> 4);
	if (adc_T == 0x80000 || adc_T == 0xfffff || adc_P ==0x80000 || adc_P == 0xfffff)
		return 0;
	FUNC2(L, FUNC0(adc_P));
	FUNC2(L, T);
	return 2;
}