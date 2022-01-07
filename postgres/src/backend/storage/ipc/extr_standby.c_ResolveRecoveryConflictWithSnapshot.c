
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VirtualTransactionId ;
typedef int TransactionId ;
struct TYPE_3__ {int dbNode; } ;
typedef TYPE_1__ RelFileNode ;


 int * GetConflictingVirtualXIDs (int ,int ) ;
 int PROCSIG_RECOVERY_CONFLICT_SNAPSHOT ;
 int ResolveRecoveryConflictWithVirtualXIDs (int *,int ) ;
 int TransactionIdIsValid (int ) ;

void
ResolveRecoveryConflictWithSnapshot(TransactionId latestRemovedXid, RelFileNode node)
{
 VirtualTransactionId *backends;
 if (!TransactionIdIsValid(latestRemovedXid))
  return;

 backends = GetConflictingVirtualXIDs(latestRemovedXid,
           node.dbNode);

 ResolveRecoveryConflictWithVirtualXIDs(backends,
             PROCSIG_RECOVERY_CONFLICT_SNAPSHOT);
}
