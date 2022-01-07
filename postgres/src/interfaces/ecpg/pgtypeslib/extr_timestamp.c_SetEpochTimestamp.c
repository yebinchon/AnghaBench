
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;
struct tm {int dummy; } ;
typedef int int64 ;


 scalar_t__ GetEpochTime (struct tm*) ;
 int tm2timestamp (struct tm*,int ,int *,int *) ;

__attribute__((used)) static timestamp
SetEpochTimestamp(void)
{
 int64 noresult = 0;
 timestamp dt;
 struct tm tt,
      *tm = &tt;

 if (GetEpochTime(tm) < 0)
  return noresult;

 tm2timestamp(tm, 0, ((void*)0), &dt);
 return dt;
}
