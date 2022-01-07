
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 scalar_t__ MAX_BACKENDS ;
 scalar_t__ MaxConnections ;
 scalar_t__ max_wal_senders ;
 scalar_t__ max_worker_processes ;

__attribute__((used)) static bool
check_autovacuum_max_workers(int *newval, void **extra, GucSource source)
{
 if (MaxConnections + *newval + 1 +
  max_worker_processes + max_wal_senders > MAX_BACKENDS)
  return 0;
 return 1;
}
