
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const npy_datetime ;



__attribute__((used)) static npy_datetime *
find_earliest_holiday_after(npy_datetime date,
            npy_datetime *holidays_begin, const npy_datetime *holidays_end)
{
    npy_datetime *trial;


    while (holidays_begin < holidays_end) {
        trial = holidays_begin + (holidays_end - holidays_begin) / 2;

        if (date < *trial) {
            holidays_end = trial;
        }
        else if (date > *trial) {
            holidays_begin = trial + 1;
        }
        else {
            return trial + 1;
        }
    }

    return holidays_begin;
}
