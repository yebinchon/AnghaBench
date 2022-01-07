
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOUBLE ;


 int NAN ;
 int day_within_year (int) ;
 int in_leap_year (int) ;
 scalar_t__ isnan (int) ;

__attribute__((used)) static inline DOUBLE month_from_time(DOUBLE time)
{
    int ily = in_leap_year(time);
    int dwy = day_within_year(time);

    if(isnan(time))
        return NAN;

    if(0<=dwy && dwy<31) return 0;
    if(dwy < 59+ily) return 1;
    if(dwy < 90+ily) return 2;
    if(dwy < 120+ily) return 3;
    if(dwy < 151+ily) return 4;
    if(dwy < 181+ily) return 5;
    if(dwy < 212+ily) return 6;
    if(dwy < 243+ily) return 7;
    if(dwy < 273+ily) return 8;
    if(dwy < 304+ily) return 9;
    if(dwy < 334+ily) return 10;
    return 11;
}
