
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int whenTaken; int lsn; } ;
typedef TYPE_1__* Snapshot ;


 int ERROR ;
 TYPE_1__* GetOldestSnapshot () ;
 int InitToastSnapshot (TYPE_1__,int ,int ) ;
 int elog (int ,char*) ;

void
init_toast_snapshot(Snapshot toast_snapshot)
{
 Snapshot snapshot = GetOldestSnapshot();

 if (snapshot == ((void*)0))
  elog(ERROR, "no known snapshots");

 InitToastSnapshot(*toast_snapshot, snapshot->lsn, snapshot->whenTaken);
}
