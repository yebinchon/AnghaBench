
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int DirectFunctionCall1 (int ,int ) ;
 int checkTimezoneIsUsedForCast (int,char*,char*) ;
 int time_timetz ;

__attribute__((used)) static Datum
castTimeToTimeTz(Datum time, bool useTz)
{
 checkTimezoneIsUsedForCast(useTz, "time", "timetz");

 return DirectFunctionCall1(time_timetz, time);
}
