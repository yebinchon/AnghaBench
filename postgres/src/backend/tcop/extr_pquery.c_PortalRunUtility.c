
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * utilityStmt; } ;
struct TYPE_6__ {int portalContext; int queryEnv; int portalParams; int sourceText; int * holdSnapshot; } ;
typedef int * Snapshot ;
typedef TYPE_1__* Portal ;
typedef TYPE_2__ PlannedStmt ;
typedef int Node ;
typedef int DestReceiver ;


 scalar_t__ ActiveSnapshotSet () ;
 int CheckPointStmt ;
 int ConstraintsSetStmt ;
 int FetchStmt ;
 int * GetActiveSnapshot () ;
 int * GetTransactionSnapshot () ;
 scalar_t__ IsA (int *,int ) ;
 int ListenStmt ;
 int LockStmt ;
 int MemoryContextSwitchTo (int ) ;
 int NotifyStmt ;
 int PROCESS_UTILITY_QUERY ;
 int PROCESS_UTILITY_TOPLEVEL ;
 int PopActiveSnapshot () ;
 int ProcessUtility (TYPE_2__*,int ,int ,int ,int ,int *,char*) ;
 int PushActiveSnapshot (int *) ;
 int * RegisterSnapshot (int *) ;
 int TransactionStmt ;
 int UnlistenStmt ;
 int VariableSetStmt ;
 int VariableShowStmt ;

__attribute__((used)) static void
PortalRunUtility(Portal portal, PlannedStmt *pstmt,
     bool isTopLevel, bool setHoldSnapshot,
     DestReceiver *dest, char *completionTag)
{
 Node *utilityStmt = pstmt->utilityStmt;
 Snapshot snapshot;
 if (!(IsA(utilityStmt, TransactionStmt) ||
    IsA(utilityStmt, LockStmt) ||
    IsA(utilityStmt, VariableSetStmt) ||
    IsA(utilityStmt, VariableShowStmt) ||
    IsA(utilityStmt, ConstraintsSetStmt) ||

    IsA(utilityStmt, FetchStmt) ||
    IsA(utilityStmt, ListenStmt) ||
    IsA(utilityStmt, NotifyStmt) ||
    IsA(utilityStmt, UnlistenStmt) ||
    IsA(utilityStmt, CheckPointStmt)))
 {
  snapshot = GetTransactionSnapshot();

  if (setHoldSnapshot)
  {
   snapshot = RegisterSnapshot(snapshot);
   portal->holdSnapshot = snapshot;
  }
  PushActiveSnapshot(snapshot);

  snapshot = GetActiveSnapshot();
 }
 else
  snapshot = ((void*)0);

 ProcessUtility(pstmt,
       portal->sourceText,
       isTopLevel ? PROCESS_UTILITY_TOPLEVEL : PROCESS_UTILITY_QUERY,
       portal->portalParams,
       portal->queryEnv,
       dest,
       completionTag);


 MemoryContextSwitchTo(portal->portalContext);






 if (snapshot != ((void*)0) && ActiveSnapshotSet() &&
  snapshot == GetActiveSnapshot())
  PopActiveSnapshot();
}
