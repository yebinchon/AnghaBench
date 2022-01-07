
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int localNumBackends ;
 int pgstat_read_current_status () ;

int
pgstat_fetch_stat_numbackends(void)
{
 pgstat_read_current_status();

 return localNumBackends;
}
