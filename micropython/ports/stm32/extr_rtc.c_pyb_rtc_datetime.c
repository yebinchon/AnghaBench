
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_8__ {void* WeekDay; void* Date; void* Month; void* Year; } ;
struct TYPE_7__ {int StoreOperation; int DayLightSaving; int TimeFormat; void* Seconds; void* Minutes; void* Hours; int SubSeconds; } ;
typedef TYPE_1__ RTC_TimeTypeDef ;
typedef TYPE_2__ RTC_DateTypeDef ;


 int HAL_RTC_GetDate (int *,TYPE_2__*,int ) ;
 int HAL_RTC_GetTime (int *,TYPE_1__*,int ) ;
 int HAL_RTC_SetDate (int *,TYPE_2__*,int ) ;
 int HAL_RTC_SetTime (int *,TYPE_1__*,int ) ;
 int RTCHandle ;
 int RTC_DAYLIGHTSAVING_NONE ;
 int RTC_FORMAT_BIN ;
 int RTC_HOURFORMAT12_AM ;
 int RTC_STOREOPERATION_SET ;
 int mp_const_none ;
 int mp_obj_get_array_fixed_n (int const,int,int **) ;
 void* mp_obj_get_int (int ) ;
 int mp_obj_new_int (void*) ;
 int mp_obj_new_tuple (int,int *) ;
 int rtc_init_finalise () ;
 void* rtc_subsec_to_us (int ) ;

mp_obj_t pyb_rtc_datetime(size_t n_args, const mp_obj_t *args) {
    rtc_init_finalise();
    if (n_args == 1) {


        RTC_DateTypeDef date;
        RTC_TimeTypeDef time;
        HAL_RTC_GetTime(&RTCHandle, &time, RTC_FORMAT_BIN);
        HAL_RTC_GetDate(&RTCHandle, &date, RTC_FORMAT_BIN);
        mp_obj_t tuple[8] = {
            mp_obj_new_int(2000 + date.Year),
            mp_obj_new_int(date.Month),
            mp_obj_new_int(date.Date),
            mp_obj_new_int(date.WeekDay),
            mp_obj_new_int(time.Hours),
            mp_obj_new_int(time.Minutes),
            mp_obj_new_int(time.Seconds),
            mp_obj_new_int(rtc_subsec_to_us(time.SubSeconds)),
        };
        return mp_obj_new_tuple(8, tuple);
    } else {

        mp_obj_t *items;
        mp_obj_get_array_fixed_n(args[1], 8, &items);

        RTC_DateTypeDef date;
        date.Year = mp_obj_get_int(items[0]) - 2000;
        date.Month = mp_obj_get_int(items[1]);
        date.Date = mp_obj_get_int(items[2]);
        date.WeekDay = mp_obj_get_int(items[3]);
        HAL_RTC_SetDate(&RTCHandle, &date, RTC_FORMAT_BIN);

        RTC_TimeTypeDef time;
        time.Hours = mp_obj_get_int(items[4]);
        time.Minutes = mp_obj_get_int(items[5]);
        time.Seconds = mp_obj_get_int(items[6]);
        time.TimeFormat = RTC_HOURFORMAT12_AM;
        time.DayLightSaving = RTC_DAYLIGHTSAVING_NONE;
        time.StoreOperation = RTC_STOREOPERATION_SET;
        HAL_RTC_SetTime(&RTCHandle, &time, RTC_FORMAT_BIN);

        return mp_const_none;
    }
}
