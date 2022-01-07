
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;
typedef int Timestamp ;


 int checkTimezoneIsUsedForCast (int,char*,char*) ;
 int cmpTimestampWithOverflow (int ,int,int ) ;
 int timestamp2timestamptz_opt_overflow (int ,int*) ;

__attribute__((used)) static int
cmpTimestampToTimestampTz(Timestamp ts1, TimestampTz tstz2, bool useTz)
{
 TimestampTz tstz1;
 int overflow = 0;

 checkTimezoneIsUsedForCast(useTz, "timestamp", "timestamptz");

 tstz1 = timestamp2timestamptz_opt_overflow(ts1, &overflow);

 return cmpTimestampWithOverflow(tstz1, overflow, tstz2);
}
