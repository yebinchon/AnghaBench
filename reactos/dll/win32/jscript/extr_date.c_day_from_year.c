
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOUBLE ;


 int NAN ;
 int floor (double) ;

__attribute__((used)) static inline DOUBLE day_from_year(DOUBLE year)
{
    if(year != (int)year)
        return NAN;

    return floor(365.0*(year-1970) + floor((year-1969)/4)
        - floor((year-1901)/100) + floor((year-1601)/400));
}
