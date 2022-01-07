
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int ERROR ;
 scalar_t__ MAX_BACKENDS ;
 scalar_t__ MaxBackends ;
 scalar_t__ MaxConnections ;
 scalar_t__ autovacuum_max_workers ;
 int elog (int ,char*) ;
 scalar_t__ max_wal_senders ;
 scalar_t__ max_worker_processes ;

void
InitializeMaxBackends(void)
{
 Assert(MaxBackends == 0);


 MaxBackends = MaxConnections + autovacuum_max_workers + 1 +
  max_worker_processes + max_wal_senders;


 if (MaxBackends > MAX_BACKENDS)
  elog(ERROR, "too many backends configured");
}
