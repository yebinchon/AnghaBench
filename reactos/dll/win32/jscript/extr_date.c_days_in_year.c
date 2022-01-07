
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOUBLE ;


 int NAN ;

__attribute__((used)) static inline DOUBLE days_in_year(DOUBLE year)
{
    int y;

    if(year != (int)year)
        return NAN;

    y = year;
    if(y%4 != 0) return 365;
    if(y%100 != 0) return 366;
    if(y%400 != 0) return 365;
    return 366;
}
