
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int dummy; } ;
typedef int Timestamp ;


 int GetEpochTime (struct pg_tm*) ;
 int tm2timestamp (struct pg_tm*,int ,int *,int *) ;

Timestamp
SetEpochTimestamp(void)
{
 Timestamp dt;
 struct pg_tm tt,
      *tm = &tt;

 GetEpochTime(tm);

 tm2timestamp(tm, 0, ((void*)0), &dt);

 return dt;
}
