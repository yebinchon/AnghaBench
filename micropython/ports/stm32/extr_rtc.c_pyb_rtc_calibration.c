
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mp_uint_t ;
typedef int mp_obj_t ;
typedef int mp_int_t ;
struct TYPE_7__ {TYPE_1__* Instance; } ;
struct TYPE_6__ {int CALR; } ;


 int HAL_RTCEx_DeactivateCalibrationOutPut (TYPE_2__*) ;
 int HAL_RTCEx_SetCalibrationOutPut (TYPE_2__*,int ) ;
 int HAL_RTCEx_SetSmoothCalib (TYPE_2__*,int ,int,int) ;
 TYPE_2__ RTCHandle ;
 int RTC_CALIBOUTPUT_512HZ ;
 int RTC_SMOOTHCALIB_PERIOD_32SEC ;
 int RTC_SMOOTHCALIB_PLUSPULSES_RESET ;
 int RTC_SMOOTHCALIB_PLUSPULSES_SET ;
 int mp_const_none ;
 int mp_obj_get_int (int const) ;
 int mp_obj_new_int (int) ;
 int mp_raise_ValueError (char*) ;
 int rtc_init_finalise () ;

mp_obj_t pyb_rtc_calibration(size_t n_args, const mp_obj_t *args) {
    rtc_init_finalise();
    mp_int_t cal;
    if (n_args == 2) {
        cal = mp_obj_get_int(args[1]);
        mp_uint_t cal_p, cal_m;
        if (cal < -511 || cal > 512) {
            mp_raise_ValueError("calibration value out of range");

        }
        if (cal > 0) {
            cal_p = RTC_SMOOTHCALIB_PLUSPULSES_SET;
            cal_m = 512 - cal;
        } else {
            cal_p = RTC_SMOOTHCALIB_PLUSPULSES_RESET;
            cal_m = -cal;
        }
        HAL_RTCEx_SetSmoothCalib(&RTCHandle, RTC_SMOOTHCALIB_PERIOD_32SEC, cal_p, cal_m);
        return mp_const_none;
    } else {


        if (RTCHandle.Instance->CALR & 0x8000) {
            cal = 512 - (RTCHandle.Instance->CALR & 0x1ff);
        } else {
            cal = -(RTCHandle.Instance->CALR & 0x1ff);
        }
        return mp_obj_new_int(cal);
    }
}
