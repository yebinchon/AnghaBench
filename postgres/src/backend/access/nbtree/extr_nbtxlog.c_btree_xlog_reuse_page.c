
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; int latestRemovedXid; } ;
typedef TYPE_1__ xl_btree_reuse_page ;
typedef int XLogReaderState ;


 scalar_t__ InHotStandby ;
 int ResolveRecoveryConflictWithSnapshot (int ,int ) ;
 scalar_t__ XLogRecGetData (int *) ;

__attribute__((used)) static void
btree_xlog_reuse_page(XLogReaderState *record)
{
 xl_btree_reuse_page *xlrec = (xl_btree_reuse_page *) XLogRecGetData(record);
 if (InHotStandby)
 {
  ResolveRecoveryConflictWithSnapshot(xlrec->latestRemovedXid,
           xlrec->node);
 }
}
