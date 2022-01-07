
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int backendStatus; } ;
typedef int PgBackendStatus ;


 TYPE_1__* localBackendStatusTable ;
 int localNumBackends ;
 int pgstat_read_current_status () ;

PgBackendStatus *
pgstat_fetch_stat_beentry(int beid)
{
 pgstat_read_current_status();

 if (beid < 1 || beid > localNumBackends)
  return ((void*)0);

 return &localBackendStatusTable[beid - 1].backendStatus;
}
