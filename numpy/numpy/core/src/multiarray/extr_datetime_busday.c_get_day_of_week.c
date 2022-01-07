
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_datetime ;



__attribute__((used)) static int
get_day_of_week(npy_datetime date)
{
    int day_of_week;


    day_of_week = (int)((date - 4) % 7);
    if (day_of_week < 0) {
        day_of_week += 7;
    }

    return day_of_week;
}
