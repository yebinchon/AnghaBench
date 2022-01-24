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
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BME280_REGISTER_PRESS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  bme280_isbme ; 
 double FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC9(lua_State* L) {
	uint8_t buf[8];
	uint32_t qfe;
	uint8_t calc_qnh = FUNC5(L, 1);

	FUNC8(BME280_REGISTER_PRESS, 8, buf);	// registers are P[3], T[3], H[2]

	// Must do Temp first since bme280_t_fine is used by the other compensation functions
	uint32_t adc_T = (uint32_t)(((buf[3] << 16) | (buf[4] << 8) | buf[5]) >> 4);
	if (adc_T == 0x80000 || adc_T == 0xfffff)
		return 0;
	FUNC6(L, FUNC2(adc_T));

	uint32_t adc_P = (uint32_t)(((buf[0] << 16) | (buf[1] << 8) | buf[2]) >> 4);
	if (adc_P ==0x80000 || adc_P == 0xfffff) {
		FUNC7(L);
		calc_qnh = 0;
	} else {
		qfe = FUNC1(adc_P);
		FUNC6(L, qfe);
	}

	uint32_t adc_H = (uint32_t)((buf[6] << 8) | buf[7]);
	if (!bme280_isbme || adc_H == 0x8000 || adc_H == 0xffff)
		FUNC7(L);
	else
		FUNC6(L, FUNC0(adc_H));

	if (calc_qnh) { // have altitude
		int32_t h = FUNC4(L, 1);
		double qnh = FUNC3(qfe, h);
		FUNC6(L, (int32_t)(qnh + 0.5));
		return 4;
	}
	return 3;
}