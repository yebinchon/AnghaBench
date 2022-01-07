
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LocalPgBackendStatus ;


 int * localBackendStatusTable ;
 int localNumBackends ;
 int pgstat_read_current_status () ;

LocalPgBackendStatus *
pgstat_fetch_stat_local_beentry(int beid)
{
 pgstat_read_current_status();

 if (beid < 1 || beid > localNumBackends)
  return ((void*)0);

 return &localBackendStatusTable[beid - 1];
}
