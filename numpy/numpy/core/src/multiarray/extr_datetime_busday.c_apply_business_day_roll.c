
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_datetime ;
typedef scalar_t__ npy_bool ;
typedef int NPY_BUSDAY_ROLL ;
 scalar_t__ NPY_DATETIME_NAT ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int days_to_month_number (scalar_t__) ;
 int get_day_of_week (scalar_t__) ;
 scalar_t__ is_holiday (scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
apply_business_day_roll(npy_datetime date, npy_datetime *out,
                    int *out_day_of_week,
                    NPY_BUSDAY_ROLL roll,
                    const npy_bool *weekmask,
                    npy_datetime *holidays_begin, npy_datetime *holidays_end)
{
    int day_of_week;


    if (date == NPY_DATETIME_NAT) {
        *out = NPY_DATETIME_NAT;
        if (roll == 128) {
            PyErr_SetString(PyExc_ValueError,
                    "NaT input in busday_offset");
            return -1;
        }
        else {
            return 0;
        }
    }


    day_of_week = get_day_of_week(date);


    if (weekmask[day_of_week] == 0 ||
                        is_holiday(date, holidays_begin, holidays_end)) {
        npy_datetime start_date = date;
        int start_day_of_week = day_of_week;

        switch (roll) {
            case 133:
            case 132: {
                do {
                    ++date;
                    if (++day_of_week == 7) {
                        day_of_week = 0;
                    }
                } while (weekmask[day_of_week] == 0 ||
                            is_holiday(date, holidays_begin, holidays_end));

                if (roll == 132) {

                    if (days_to_month_number(start_date) !=
                                days_to_month_number(date)) {
                        date = start_date;
                        day_of_week = start_day_of_week;

                        do {
                            --date;
                            if (--day_of_week == -1) {
                                day_of_week = 6;
                            }
                        } while (weekmask[day_of_week] == 0 ||
                            is_holiday(date, holidays_begin, holidays_end));
                    }
                }
                break;
            }
            case 129:
            case 131: {
                do {
                    --date;
                    if (--day_of_week == -1) {
                        day_of_week = 6;
                    }
                } while (weekmask[day_of_week] == 0 ||
                            is_holiday(date, holidays_begin, holidays_end));

                if (roll == 131) {

                    if (days_to_month_number(start_date) !=
                                days_to_month_number(date)) {
                        date = start_date;
                        day_of_week = start_day_of_week;

                        do {
                            ++date;
                            if (++day_of_week == 7) {
                                day_of_week = 0;
                            }
                        } while (weekmask[day_of_week] == 0 ||
                            is_holiday(date, holidays_begin, holidays_end));
                    }
                }
                break;
            }
            case 130: {
                date = NPY_DATETIME_NAT;
                break;
            }
            case 128: {
                *out = NPY_DATETIME_NAT;
                PyErr_SetString(PyExc_ValueError,
                        "Non-business day date in busday_offset");
                return -1;
            }
        }
    }

    *out = date;
    *out_day_of_week = day_of_week;

    return 0;
}
