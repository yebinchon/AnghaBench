
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOUBLE ;


 int MS_PER_DAY ;
 int day_from_year (int) ;

__attribute__((used)) static inline DOUBLE time_from_year(DOUBLE year)
{
    return MS_PER_DAY*day_from_year(year);
}
