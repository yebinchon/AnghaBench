#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_uint_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  int mp_int_t ;
struct TYPE_7__ {TYPE_1__* Instance; } ;
struct TYPE_6__ {int CALR; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__ RTCHandle ; 
 int /*<<< orphan*/  RTC_CALIBOUTPUT_512HZ ; 
 int /*<<< orphan*/  RTC_SMOOTHCALIB_PERIOD_32SEC ; 
 int RTC_SMOOTHCALIB_PLUSPULSES_RESET ; 
 int RTC_SMOOTHCALIB_PLUSPULSES_SET ; 
 int /*<<< orphan*/  mp_const_none ; 
 int FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

mp_obj_t FUNC7(size_t n_args, const mp_obj_t *args) {
    FUNC6();
    mp_int_t cal;
    if (n_args == 2) {
        cal = FUNC3(args[1]);
        mp_uint_t cal_p, cal_m;
        if (cal < -511 || cal > 512) {
#if defined(MICROPY_HW_RTC_USE_CALOUT) && MICROPY_HW_RTC_USE_CALOUT
            if ((cal & 0xfffe) == 0x0ffe) {
                // turn on/off X18 (PC13) 512Hz output
                // Note:
                //      Output will stay active even in VBAT mode (and inrease current)
                if (cal & 1) {
                    HAL_RTCEx_SetCalibrationOutPut(&RTCHandle, RTC_CALIBOUTPUT_512HZ);
                } else {
                    HAL_RTCEx_DeactivateCalibrationOutPut(&RTCHandle);
                }
                return mp_obj_new_int(cal & 1);
            } else {
                mp_raise_ValueError("calibration value out of range");
            }
#else
            FUNC5("calibration value out of range");
#endif
        }
        if (cal > 0) {
            cal_p = RTC_SMOOTHCALIB_PLUSPULSES_SET;
            cal_m = 512 - cal;
        } else {
            cal_p = RTC_SMOOTHCALIB_PLUSPULSES_RESET;
            cal_m = -cal;
        }
        FUNC2(&RTCHandle, RTC_SMOOTHCALIB_PERIOD_32SEC, cal_p, cal_m);
        return mp_const_none;
    } else {
        // printf("CALR = 0x%x\n", (mp_uint_t) RTCHandle.Instance->CALR); // DEBUG
        // Test if CALP bit is set in CALR:
        if (RTCHandle.Instance->CALR & 0x8000) {
            cal = 512 - (RTCHandle.Instance->CALR & 0x1ff);
        } else {
            cal = -(RTCHandle.Instance->CALR & 0x1ff);
        }
        return FUNC4(cal);
    }
}