
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AbortCurrentTransaction () ;
 int * CurrentResourceOwner ;
 int ERROR ;
 int ExportInProgress ;
 int IsTransactionState () ;
 int * SavedResourceOwnerDuringExport ;
 int elog (int ,char*) ;

void
SnapBuildClearExportedSnapshot(void)
{

 if (!ExportInProgress)
  return;

 if (!IsTransactionState())
  elog(ERROR, "clearing exported snapshot in wrong transaction state");


 AbortCurrentTransaction();

 CurrentResourceOwner = SavedResourceOwnerDuringExport;
 SavedResourceOwnerDuringExport = ((void*)0);
 ExportInProgress = 0;
}
