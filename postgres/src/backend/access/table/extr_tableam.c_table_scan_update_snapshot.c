
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TableScanDesc ;
struct TYPE_3__ {int rs_flags; int rs_snapshot; } ;
typedef int Snapshot ;


 int Assert (int ) ;
 int IsMVCCSnapshot (int ) ;
 int RegisterSnapshot (int ) ;
 int SO_TEMP_SNAPSHOT ;

void
table_scan_update_snapshot(TableScanDesc scan, Snapshot snapshot)
{
 Assert(IsMVCCSnapshot(snapshot));

 RegisterSnapshot(snapshot);
 scan->rs_snapshot = snapshot;
 scan->rs_flags |= SO_TEMP_SNAPSHOT;
}
