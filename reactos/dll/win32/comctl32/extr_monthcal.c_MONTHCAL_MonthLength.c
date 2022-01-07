
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wMonth; int wYear; } ;


 TYPE_1__ min_allowed_date ;

int MONTHCAL_MonthLength(int month, int year)
{
  const int mdays[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};



  if(month == 0)
    month = 12;
  else if(month == 13)
    month = 1;


  if(month == min_allowed_date.wMonth && year == min_allowed_date.wYear) return 19;




  if(month == 2) {
    return mdays[month - 1] + ((year%400 == 0) ? 1 : ((year%100 != 0) &&
     (year%4 == 0)) ? 1 : 0);
  }
  else {
    return mdays[month - 1];
  }
}
