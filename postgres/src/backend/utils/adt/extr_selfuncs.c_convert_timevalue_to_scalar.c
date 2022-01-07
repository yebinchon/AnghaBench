
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double zone; int time; } ;
typedef TYPE_1__ TimeTzADT ;
struct TYPE_6__ {double day; double month; int time; } ;
typedef int Oid ;
typedef TYPE_2__ Interval ;
typedef int Datum ;



 double DAYS_PER_YEAR ;
 int DatumGetDateADT (int ) ;
 TYPE_2__* DatumGetIntervalP (int ) ;
 double DatumGetTimeADT (int ) ;
 TYPE_1__* DatumGetTimeTzADTP (int ) ;
 double DatumGetTimestamp (int ) ;
 double DatumGetTimestampTz (int ) ;

 scalar_t__ MONTHS_PER_YEAR ;




 double USECS_PER_DAY ;
 double date2timestamp_no_overflow (int ) ;

__attribute__((used)) static double
convert_timevalue_to_scalar(Datum value, Oid typid, bool *failure)
{
 switch (typid)
 {
  case 130:
   return DatumGetTimestamp(value);
  case 129:
   return DatumGetTimestampTz(value);
  case 133:
   return date2timestamp_no_overflow(DatumGetDateADT(value));
  case 132:
   {
    Interval *interval = DatumGetIntervalP(value);






    return interval->time + interval->day * (double) USECS_PER_DAY +
     interval->month * ((DAYS_PER_YEAR / (double) MONTHS_PER_YEAR) * USECS_PER_DAY);
   }
  case 131:
   return DatumGetTimeADT(value);
  case 128:
   {
    TimeTzADT *timetz = DatumGetTimeTzADTP(value);


    return (double) (timetz->time + (timetz->zone * 1000000.0));
   }
 }

 *failure = 1;
 return 0;
}
