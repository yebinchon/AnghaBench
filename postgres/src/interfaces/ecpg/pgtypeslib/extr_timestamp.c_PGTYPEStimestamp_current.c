
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;
struct tm {int dummy; } ;


 int GetCurrentDateTime (struct tm*) ;
 scalar_t__ errno ;
 int tm2timestamp (struct tm*,int ,int *,int *) ;

void
PGTYPEStimestamp_current(timestamp * ts)
{
 struct tm tm;

 GetCurrentDateTime(&tm);
 if (errno == 0)
  tm2timestamp(&tm, 0, ((void*)0), ts);
 return;
}
