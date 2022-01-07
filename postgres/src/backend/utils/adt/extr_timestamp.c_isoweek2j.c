
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int date2j (int,int,int) ;
 int j2day (int) ;

int
isoweek2j(int year, int week)
{
 int day0,
    day4;


 day4 = date2j(year, 1, 4);


 day0 = j2day(day4 - 1);

 return ((week - 1) * 7) + (day4 - day0);
}
