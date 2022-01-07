
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; int latestRemovedXid; } ;
typedef TYPE_1__ xl_heap_cleanup_info ;
typedef int XLogReaderState ;


 int Assert (int) ;
 scalar_t__ InHotStandby ;
 int ResolveRecoveryConflictWithSnapshot (int ,int ) ;
 scalar_t__ XLogRecGetData (int *) ;
 int XLogRecHasAnyBlockRefs (int *) ;

__attribute__((used)) static void
heap_xlog_cleanup_info(XLogReaderState *record)
{
 xl_heap_cleanup_info *xlrec = (xl_heap_cleanup_info *) XLogRecGetData(record);

 if (InHotStandby)
  ResolveRecoveryConflictWithSnapshot(xlrec->latestRemovedXid, xlrec->node);
 Assert(!XLogRecHasAnyBlockRefs(record));
}
