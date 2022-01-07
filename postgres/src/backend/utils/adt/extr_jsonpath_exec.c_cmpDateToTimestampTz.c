
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;
typedef int DateADT ;


 int checkTimezoneIsUsedForCast (int,char*,char*) ;
 int cmpTimestampWithOverflow (int ,int,int ) ;
 int date2timestamptz_opt_overflow (int ,int*) ;

__attribute__((used)) static int
cmpDateToTimestampTz(DateADT date1, TimestampTz tstz2, bool useTz)
{
 TimestampTz tstz1;
 int overflow = 0;

 checkTimezoneIsUsedForCast(useTz, "date", "timestamptz");

 tstz1 = date2timestamptz_opt_overflow(date1, &overflow);

 return cmpTimestampWithOverflow(tstz1, overflow, tstz2);
}
