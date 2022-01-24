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
typedef  scalar_t__ npy_datetime ;
typedef  scalar_t__ npy_bool ;
typedef  int NPY_BUSDAY_ROLL ;

/* Variables and functions */
#define  NPY_BUSDAY_FOLLOWING 133 
#define  NPY_BUSDAY_MODIFIEDFOLLOWING 132 
#define  NPY_BUSDAY_MODIFIEDPRECEDING 131 
#define  NPY_BUSDAY_NAT 130 
#define  NPY_BUSDAY_PRECEDING 129 
#define  NPY_BUSDAY_RAISE 128 
 scalar_t__ NPY_DATETIME_NAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC4(npy_datetime date, npy_datetime *out,
                    int *out_day_of_week,
                    NPY_BUSDAY_ROLL roll,
                    const npy_bool *weekmask,
                    npy_datetime *holidays_begin, npy_datetime *holidays_end)
{
    int day_of_week;

    /* Deal with NaT input */
    if (date == NPY_DATETIME_NAT) {
        *out = NPY_DATETIME_NAT;
        if (roll == NPY_BUSDAY_RAISE) {
            FUNC0(PyExc_ValueError,
                    "NaT input in busday_offset");
            return -1;
        }
        else {
            return 0;
        }
    }

    /* Get the day of the week for 'date' */
    day_of_week = FUNC2(date);

    /* Apply the 'roll' if it's not a business day */
    if (weekmask[day_of_week] == 0 ||
                        FUNC3(date, holidays_begin, holidays_end)) {
        npy_datetime start_date = date;
        int start_day_of_week = day_of_week;

        switch (roll) {
            case NPY_BUSDAY_FOLLOWING:
            case NPY_BUSDAY_MODIFIEDFOLLOWING: {
                do {
                    ++date;
                    if (++day_of_week == 7) {
                        day_of_week = 0;
                    }
                } while (weekmask[day_of_week] == 0 ||
                            FUNC3(date, holidays_begin, holidays_end));

                if (roll == NPY_BUSDAY_MODIFIEDFOLLOWING) {
                    /* If we crossed a month boundary, do preceding instead */
                    if (FUNC1(start_date) !=
                                FUNC1(date)) {
                        date = start_date;
                        day_of_week = start_day_of_week;

                        do {
                            --date;
                            if (--day_of_week == -1) {
                                day_of_week = 6;
                            }
                        } while (weekmask[day_of_week] == 0 ||
                            FUNC3(date, holidays_begin, holidays_end));
                    }
                }
                break;
            }
            case NPY_BUSDAY_PRECEDING:
            case NPY_BUSDAY_MODIFIEDPRECEDING: {
                do {
                    --date;
                    if (--day_of_week == -1) {
                        day_of_week = 6;
                    }
                } while (weekmask[day_of_week] == 0 ||
                            FUNC3(date, holidays_begin, holidays_end));

                if (roll == NPY_BUSDAY_MODIFIEDPRECEDING) {
                    /* If we crossed a month boundary, do following instead */
                    if (FUNC1(start_date) !=
                                FUNC1(date)) {
                        date = start_date;
                        day_of_week = start_day_of_week;

                        do {
                            ++date;
                            if (++day_of_week == 7) {
                                day_of_week = 0;
                            }
                        } while (weekmask[day_of_week] == 0 ||
                            FUNC3(date, holidays_begin, holidays_end));
                    }
                }
                break;
            }
            case NPY_BUSDAY_NAT: {
                date = NPY_DATETIME_NAT;
                break;
            }
            case NPY_BUSDAY_RAISE: {
                *out = NPY_DATETIME_NAT;
                FUNC0(PyExc_ValueError,
                        "Non-business day date in busday_offset");
                return -1;
            }
        }
    }

    *out = date;
    *out_day_of_week = day_of_week;

    return 0;
}