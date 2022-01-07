
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;
typedef int date ;


 int TIMESTAMP_NOT_FINITE (int) ;
 int USECS_PER_DAY ;

date
PGTYPESdate_from_timestamp(timestamp dt)
{
 date dDate;

 dDate = 0;

 if (!TIMESTAMP_NOT_FINITE(dt))
 {

  dDate = (dt / USECS_PER_DAY);
 }

 return dDate;
}
