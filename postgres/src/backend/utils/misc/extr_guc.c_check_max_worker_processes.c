
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 scalar_t__ MAX_BACKENDS ;
 scalar_t__ MaxConnections ;
 scalar_t__ autovacuum_max_workers ;
 scalar_t__ max_wal_senders ;

__attribute__((used)) static bool
check_max_worker_processes(int *newval, void **extra, GucSource source)
{
 if (MaxConnections + autovacuum_max_workers + 1 +
  *newval + max_wal_senders > MAX_BACKENDS)
  return 0;
 return 1;
}
