
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOUBLE ;


 int days_in_year (int ) ;
 int year_from_time (int ) ;

__attribute__((used)) static inline int in_leap_year(DOUBLE time)
{
    if(days_in_year(year_from_time(time))==366)
        return 1;
    return 0;
}
