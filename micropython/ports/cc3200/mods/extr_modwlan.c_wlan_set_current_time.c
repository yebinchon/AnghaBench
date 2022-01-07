
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int tm_sec; int tm_min; int tm_hour; int tm_year; int tm_mon; int tm_mday; } ;
typedef TYPE_1__ timeutils_struct_time_t ;
typedef int _u8 ;
struct TYPE_5__ {int sl_tm_sec; int sl_tm_min; int sl_tm_hour; int sl_tm_year; int sl_tm_mon; int sl_tm_day; int member_0; } ;
typedef TYPE_2__ SlDateTime_t ;


 int SL_DEVICE_GENERAL_CONFIGURATION ;
 int SL_DEVICE_GENERAL_CONFIGURATION_DATE_TIME ;
 int sl_DevSet (int ,int ,int,int *) ;
 int timeutils_seconds_since_2000_to_struct_time (int ,TYPE_1__*) ;

void wlan_set_current_time (uint32_t seconds_since_2000) {
    timeutils_struct_time_t tm;
    timeutils_seconds_since_2000_to_struct_time(seconds_since_2000, &tm);

    SlDateTime_t sl_datetime = {0};
    sl_datetime.sl_tm_day = tm.tm_mday;
    sl_datetime.sl_tm_mon = tm.tm_mon;
    sl_datetime.sl_tm_year = tm.tm_year;
    sl_datetime.sl_tm_hour = tm.tm_hour;
    sl_datetime.sl_tm_min = tm.tm_min;
    sl_datetime.sl_tm_sec = tm.tm_sec;
    sl_DevSet(SL_DEVICE_GENERAL_CONFIGURATION, SL_DEVICE_GENERAL_CONFIGURATION_DATE_TIME, sizeof(SlDateTime_t), (_u8 *)(&sl_datetime));
}
