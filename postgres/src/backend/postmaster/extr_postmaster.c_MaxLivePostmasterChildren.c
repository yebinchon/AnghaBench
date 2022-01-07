
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MaxConnections ;
 int autovacuum_max_workers ;
 int max_wal_senders ;
 int max_worker_processes ;

int
MaxLivePostmasterChildren(void)
{
 return 2 * (MaxConnections + autovacuum_max_workers + 1 +
    max_wal_senders + max_worker_processes);
}
