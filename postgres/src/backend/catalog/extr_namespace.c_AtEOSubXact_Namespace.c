
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void* tempNamespaceId; } ;
struct TYPE_4__ {scalar_t__ nestLevel; int creationNamespace; int searchPath; } ;
typedef scalar_t__ SubTransactionId ;
typedef TYPE_1__ OverrideStackEntry ;


 scalar_t__ GetCurrentTransactionNestLevel () ;
 void* InvalidOid ;
 scalar_t__ InvalidSubTransactionId ;
 TYPE_3__* MyProc ;
 int WARNING ;
 int activeCreationNamespace ;
 int activeSearchPath ;
 int activeTempCreationPending ;
 int baseCreationNamespace ;
 int baseSearchPath ;
 int baseSearchPathValid ;
 int baseTempCreationPending ;
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
AtEOSubXact_Namespace(bool isCommit, SubTransactionId mySubid,
       SubTransactionId parentSubid)
{
 OverrideStackEntry *entry;

 if (myTempNamespaceSubID == mySubid)
 {
  if (isCommit)
   myTempNamespaceSubID = parentSubid;
  else
  {
   myTempNamespaceSubID = InvalidSubTransactionId;

   myTempNamespace = InvalidOid;
   myTempToastNamespace = InvalidOid;
   baseSearchPathValid = 0;
   MyProc->tempNamespaceId = InvalidOid;
  }
 }




 while (overrideStack)
 {
  entry = (OverrideStackEntry *) linitial(overrideStack);
  if (entry->nestLevel < GetCurrentTransactionNestLevel())
   break;
  if (isCommit)
   elog(WARNING, "leaked override search path");
  overrideStack = list_delete_first(overrideStack);
  list_free(entry->searchPath);
  pfree(entry);
 }


 if (overrideStack)
 {
  entry = (OverrideStackEntry *) linitial(overrideStack);
  activeSearchPath = entry->searchPath;
  activeCreationNamespace = entry->creationNamespace;
  activeTempCreationPending = 0;
 }
 else
 {

  activeSearchPath = baseSearchPath;
  activeCreationNamespace = baseCreationNamespace;
  activeTempCreationPending = baseTempCreationPending;
 }
}
