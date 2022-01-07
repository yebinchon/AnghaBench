
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct tm {int tm_min; int tm_hour; int tm_year; scalar_t__ tm_mon; int tm_mday; } ;
typedef int npy_int64 ;
struct TYPE_5__ {int year; int hour; int min; scalar_t__ month; int day; } ;
typedef TYPE_1__ npy_datetimestruct ;
typedef int NPY_TIME_T ;


 scalar_t__ get_datetimestruct_days (TYPE_1__*) ;
 scalar_t__ get_localtime (int*,struct tm*) ;
 scalar_t__ is_leapyear (int) ;

__attribute__((used)) static int
convert_datetimestruct_utc_to_local(npy_datetimestruct *out_dts_local,
                const npy_datetimestruct *dts_utc, int *out_timezone_offset)
{
    NPY_TIME_T rawtime = 0, localrawtime;
    struct tm tm_;
    npy_int64 year_correction = 0;


    *out_dts_local = *dts_utc;
    if (sizeof(NPY_TIME_T) == 4 && out_dts_local->year >= 2038) {
        if (is_leapyear(out_dts_local->year)) {

            year_correction = out_dts_local->year - 2036;
            out_dts_local->year -= year_correction;
        }
        else {

            year_correction = out_dts_local->year - 2037;
            out_dts_local->year -= year_correction;
        }
    }







    rawtime = (NPY_TIME_T)get_datetimestruct_days(out_dts_local) * 24 * 60 * 60;
    rawtime += dts_utc->hour * 60 * 60;
    rawtime += dts_utc->min * 60;


    if (get_localtime(&rawtime, &tm_) < 0) {

        return -1;
    }


    out_dts_local->min = tm_.tm_min;
    out_dts_local->hour = tm_.tm_hour;
    out_dts_local->day = tm_.tm_mday;
    out_dts_local->month = tm_.tm_mon + 1;
    out_dts_local->year = tm_.tm_year + 1900;


    rawtime /= 60;
    localrawtime = (NPY_TIME_T)get_datetimestruct_days(out_dts_local) * 24 * 60;
    localrawtime += out_dts_local->hour * 60;
    localrawtime += out_dts_local->min;

    *out_timezone_offset = localrawtime - rawtime;


    out_dts_local->year += year_correction;

    return 0;
}
