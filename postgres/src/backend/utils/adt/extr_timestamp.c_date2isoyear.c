
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;


 int date2j (int,int,int) ;
 int j2day (int) ;

int
date2isoyear(int year, int mon, int mday)
{
 float8 result;
 int day0,
    day4,
    dayn;


 dayn = date2j(year, mon, mday);


 day4 = date2j(year, 1, 4);


 day0 = j2day(day4 - 1);





 if (dayn < day4 - day0)
 {
  day4 = date2j(year - 1, 1, 4);


  day0 = j2day(day4 - 1);

  year--;
 }

 result = (dayn - (day4 - day0)) / 7 + 1;





 if (result >= 52)
 {
  day4 = date2j(year + 1, 1, 4);


  day0 = j2day(day4 - 1);

  if (dayn >= day4 - day0)
   year++;
 }

 return year;
}
