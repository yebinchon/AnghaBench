
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_int64 ;
typedef scalar_t__ npy_datetime ;
typedef scalar_t__ npy_bool ;


 scalar_t__ NPY_DATETIME_NAT ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 scalar_t__* find_earliest_holiday_on_or_after (scalar_t__,scalar_t__*,scalar_t__*) ;
 int get_day_of_week (scalar_t__) ;

__attribute__((used)) static int
apply_business_day_count(npy_datetime date_begin, npy_datetime date_end,
                    npy_int64 *out,
                    const npy_bool *weekmask, int busdays_in_weekmask,
                    npy_datetime *holidays_begin, npy_datetime *holidays_end)
{
    npy_int64 count, whole_weeks;
    int day_of_week = 0;
    int swapped = 0;


    if (date_begin == NPY_DATETIME_NAT || date_end == NPY_DATETIME_NAT) {
        PyErr_SetString(PyExc_ValueError,
                "Cannot compute a business day count with a NaT (not-a-time) "
                "date");
        return -1;
    }


    if (date_begin == date_end) {
        *out = 0;
        return 0;
    }
    else if (date_begin > date_end) {
        npy_datetime tmp = date_begin;
        date_begin = date_end;
        date_end = tmp;
        swapped = 1;
    }


    holidays_begin = find_earliest_holiday_on_or_after(date_begin,
                                        holidays_begin, holidays_end);

    holidays_end = find_earliest_holiday_on_or_after(date_end,
                                        holidays_begin, holidays_end);


    count = -(holidays_end - holidays_begin);


    whole_weeks = (date_end - date_begin) / 7;
    count += whole_weeks * busdays_in_weekmask;
    date_begin += whole_weeks * 7;

    if (date_begin < date_end) {

        day_of_week = get_day_of_week(date_begin);


        while (date_begin < date_end) {
            if (weekmask[day_of_week]) {
                count++;
            }
            ++date_begin;
            if (++day_of_week == 7) {
                day_of_week = 0;
            }
        }
    }

    if (swapped) {
        count = -count;
    }

    *out = count;
    return 0;
}
