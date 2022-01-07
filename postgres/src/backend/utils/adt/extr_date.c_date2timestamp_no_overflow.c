
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double DateADT ;


 scalar_t__ DATE_IS_NOBEGIN (double) ;
 scalar_t__ DATE_IS_NOEND (double) ;
 double DBL_MAX ;
 scalar_t__ USECS_PER_DAY ;

double
date2timestamp_no_overflow(DateADT dateVal)
{
 double result;

 if (DATE_IS_NOBEGIN(dateVal))
  result = -DBL_MAX;
 else if (DATE_IS_NOEND(dateVal))
  result = DBL_MAX;
 else
 {

  result = dateVal * (double) USECS_PER_DAY;
 }

 return result;
}
