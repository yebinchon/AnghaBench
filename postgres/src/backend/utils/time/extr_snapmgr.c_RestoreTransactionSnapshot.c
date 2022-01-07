
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Snapshot ;


 int InvalidPid ;
 int SetTransactionSnapshot (int ,int *,int ,void*) ;

void
RestoreTransactionSnapshot(Snapshot snapshot, void *master_pgproc)
{
 SetTransactionSnapshot(snapshot, ((void*)0), InvalidPid, master_pgproc);
}
