
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 int abstime2tm (int ,int*,struct tm*,int *) ;
 int time (int *) ;

void
GetCurrentDateTime(struct tm *tm)
{
 int tz;

 abstime2tm(time(((void*)0)), &tz, tm, ((void*)0));
}
