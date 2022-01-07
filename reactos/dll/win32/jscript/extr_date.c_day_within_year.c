
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOUBLE ;


 int day (int ) ;
 int day_from_year (int ) ;
 int year_from_time (int ) ;

__attribute__((used)) static inline int day_within_year(DOUBLE time)
{
    return day(time) - day_from_year(year_from_time(time));
}
