
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Timestamp ;
typedef int DateADT ;


 scalar_t__ DATE_IS_NOBEGIN (int) ;
 scalar_t__ DATE_IS_NOEND (int) ;
 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int POSTGRES_EPOCH_JDATE ;
 int TIMESTAMP_END_JULIAN ;
 int TIMESTAMP_NOBEGIN (int) ;
 int TIMESTAMP_NOEND (int) ;
 int USECS_PER_DAY ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

Timestamp
date2timestamp_opt_overflow(DateADT dateVal, int *overflow)
{
 Timestamp result;

 if (DATE_IS_NOBEGIN(dateVal))
  TIMESTAMP_NOBEGIN(result);
 else if (DATE_IS_NOEND(dateVal))
  TIMESTAMP_NOEND(result);
 else
 {





  if (dateVal >= (TIMESTAMP_END_JULIAN - POSTGRES_EPOCH_JDATE))
  {
   if (overflow)
   {
    *overflow = 1;
    return (Timestamp) 0;
   }
   else
   {
    ereport(ERROR,
      (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
       errmsg("date out of range for timestamp")));
   }
  }


  result = dateVal * USECS_PER_DAY;
 }

 return result;
}
