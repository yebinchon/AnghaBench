
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xcnt; } ;
typedef TYPE_1__* Snapshot ;
typedef int SnapBuild ;


 scalar_t__ CurrentResourceOwner ;
 int ERROR ;
 int ExportInProgress ;
 char* ExportSnapshot (TYPE_1__*) ;
 scalar_t__ IsTransactionOrTransactionBlock () ;
 int LOG ;
 scalar_t__ SavedResourceOwnerDuringExport ;
 TYPE_1__* SnapBuildInitialSnapshot (int *) ;
 int StartTransactionCommand () ;
 int XACT_REPEATABLE_READ ;
 int XactIsoLevel ;
 int XactReadOnly ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errmsg_plural (char*,char*,int ,char*,int ) ;

const char *
SnapBuildExportSnapshot(SnapBuild *builder)
{
 Snapshot snap;
 char *snapname;

 if (IsTransactionOrTransactionBlock())
  elog(ERROR, "cannot export a snapshot from within a transaction");

 if (SavedResourceOwnerDuringExport)
  elog(ERROR, "can only export one snapshot at a time");

 SavedResourceOwnerDuringExport = CurrentResourceOwner;
 ExportInProgress = 1;

 StartTransactionCommand();


 XactIsoLevel = XACT_REPEATABLE_READ;
 XactReadOnly = 1;

 snap = SnapBuildInitialSnapshot(builder);





 snapname = ExportSnapshot(snap);

 ereport(LOG,
   (errmsg_plural("exported logical decoding snapshot: \"%s\" with %u transaction ID",
         "exported logical decoding snapshot: \"%s\" with %u transaction IDs",
         snap->xcnt,
         snapname, snap->xcnt)));
 return snapname;
}
