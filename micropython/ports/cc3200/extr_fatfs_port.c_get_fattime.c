
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
typedef TYPE_1__ timeutils_struct_time_t ;
typedef int DWORD ;


 int pyb_rtc_get_seconds () ;
 int timeutils_seconds_since_2000_to_struct_time (int ,TYPE_1__*) ;

DWORD get_fattime(void) {
    timeutils_struct_time_t tm;
    timeutils_seconds_since_2000_to_struct_time(pyb_rtc_get_seconds(), &tm);

    return ((tm.tm_year - 1980) << 25) | ((tm.tm_mon) << 21) |
            ((tm.tm_mday) << 16) | ((tm.tm_hour) << 11) |
            ((tm.tm_min) << 5) | (tm.tm_sec >> 1);
}
