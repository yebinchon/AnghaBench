
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_int64 ;
typedef scalar_t__ npy_datetime ;
typedef scalar_t__ npy_bool ;
typedef int NPY_BUSDAY_ROLL ;


 scalar_t__ NPY_DATETIME_NAT ;
 scalar_t__ apply_business_day_roll (scalar_t__,scalar_t__*,int*,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__* find_earliest_holiday_after (scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__* find_earliest_holiday_on_or_after (scalar_t__,scalar_t__*,scalar_t__*) ;
 int is_holiday (scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
apply_business_day_offset(npy_datetime date, npy_int64 offset,
                    npy_datetime *out,
                    NPY_BUSDAY_ROLL roll,
                    npy_bool *weekmask, int busdays_in_weekmask,
                    npy_datetime *holidays_begin, npy_datetime *holidays_end)
{
    int day_of_week = 0;
    npy_datetime *holidays_temp;


    if (apply_business_day_roll(date, &date, &day_of_week,
                                roll,
                                weekmask,
                                holidays_begin, holidays_end) < 0) {
        return -1;
    }


    if (date == NPY_DATETIME_NAT) {
        *out = NPY_DATETIME_NAT;
        return 0;
    }


    if (offset > 0) {

        holidays_begin = find_earliest_holiday_on_or_after(date,
                                            holidays_begin, holidays_end);


        date += (offset / busdays_in_weekmask) * 7;
        offset = offset % busdays_in_weekmask;


        holidays_temp = find_earliest_holiday_after(date,
                                            holidays_begin, holidays_end);
        offset += holidays_temp - holidays_begin;
        holidays_begin = holidays_temp;


        while (offset > 0) {
            ++date;
            if (++day_of_week == 7) {
                day_of_week = 0;
            }
            if (weekmask[day_of_week] && !is_holiday(date,
                                            holidays_begin, holidays_end)) {
                offset--;
            }
        }
    }
    else if (offset < 0) {

        holidays_end = find_earliest_holiday_after(date,
                                            holidays_begin, holidays_end);


        date += (offset / busdays_in_weekmask) * 7;
        offset = offset % busdays_in_weekmask;


        holidays_temp = find_earliest_holiday_on_or_after(date,
                                            holidays_begin, holidays_end);
        offset -= holidays_end - holidays_temp;
        holidays_end = holidays_temp;


        while (offset < 0) {
            --date;
            if (--day_of_week == -1) {
                day_of_week = 6;
            }
            if (weekmask[day_of_week] && !is_holiday(date,
                                            holidays_begin, holidays_end)) {
                offset++;
            }
        }
    }

    *out = date;
    return 0;
}
