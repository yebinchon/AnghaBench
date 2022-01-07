
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void* tempNamespaceId; } ;
struct TYPE_4__ {int searchPath; } ;
typedef TYPE_1__ OverrideStackEntry ;


 void* InvalidOid ;
 scalar_t__ InvalidSubTransactionId ;
 TYPE_3__* MyProc ;
 int RemoveTempRelationsCallback ;
 int WARNING ;
 int activeCreationNamespace ;
 int activeSearchPath ;
 int activeTempCreationPending ;
 int baseCreationNamespace ;
 int baseSearchPath ;
 int baseSearchPathValid ;
 int baseTempCreationPending ;
 int before_shmem_exit (int ,int ) ;
 int elog (int ,char*) ;
 scalar_t__ linitial (scalar_t__) ;
 scalar_t__ list_delete_first (scalar_t__) ;
 int list_free (int ) ;
 void* myTempNamespace ;
 scalar_t__ myTempNamespaceSubID ;
 void* myTempToastNamespace ;
 scalar_t__ overrideStack ;
 int pfree (TYPE_1__*) ;

void
AtEOXact_Namespace(bool isCommit, bool parallel)
{
 if (myTempNamespaceSubID != InvalidSubTransactionId && !parallel)
 {
  if (isCommit)
   before_shmem_exit(RemoveTempRelationsCallback, 0);
  else
  {
   myTempNamespace = InvalidOid;
   myTempToastNamespace = InvalidOid;
   baseSearchPathValid = 0;
   MyProc->tempNamespaceId = InvalidOid;
  }
  myTempNamespaceSubID = InvalidSubTransactionId;
 }




 if (overrideStack)
 {
  if (isCommit)
   elog(WARNING, "leaked override search path");
  while (overrideStack)
  {
   OverrideStackEntry *entry;

   entry = (OverrideStackEntry *) linitial(overrideStack);
   overrideStack = list_delete_first(overrideStack);
   list_free(entry->searchPath);
   pfree(entry);
  }

  activeSearchPath = baseSearchPath;
  activeCreationNamespace = baseCreationNamespace;
  activeTempCreationPending = baseTempCreationPending;
 }
}
