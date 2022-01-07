
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;
typedef int Timestamp ;
typedef int DateADT ;


 int cmpTimestampWithOverflow (int ,int,int ) ;
 int date2timestamp_opt_overflow (int ,int*) ;

__attribute__((used)) static int
cmpDateToTimestamp(DateADT date1, Timestamp ts2, bool useTz)
{
 TimestampTz ts1;
 int overflow = 0;

 ts1 = date2timestamp_opt_overflow(date1, &overflow);

 return cmpTimestampWithOverflow(ts1, overflow, ts2);
}
