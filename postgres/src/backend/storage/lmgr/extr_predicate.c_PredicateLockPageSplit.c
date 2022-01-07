
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int SxactGlobalXmin; } ;
struct TYPE_6__ {int dbNode; } ;
struct TYPE_7__ {int rd_id; TYPE_1__ rd_node; } ;
typedef TYPE_2__* Relation ;
typedef int PREDICATELOCKTARGETTAG ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BlockNumberIsValid (int ) ;
 int GetParentPredicateLockTag (int *,int *) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_5__* PredXact ;
 int PredicateLockingNeededForRelation (TYPE_2__*) ;
 int SET_PREDICATELOCKTARGETTAG_PAGE (int ,int ,int ,int ) ;
 int SerializablePredicateLockListLock ;
 int TransactionIdIsValid (int ) ;
 int TransferPredicateLocksToNewTarget (int ,int ,int) ;

void
PredicateLockPageSplit(Relation relation, BlockNumber oldblkno,
        BlockNumber newblkno)
{
 PREDICATELOCKTARGETTAG oldtargettag;
 PREDICATELOCKTARGETTAG newtargettag;
 bool success;
 if (!TransactionIdIsValid(PredXact->SxactGlobalXmin))
  return;

 if (!PredicateLockingNeededForRelation(relation))
  return;

 Assert(oldblkno != newblkno);
 Assert(BlockNumberIsValid(oldblkno));
 Assert(BlockNumberIsValid(newblkno));

 SET_PREDICATELOCKTARGETTAG_PAGE(oldtargettag,
         relation->rd_node.dbNode,
         relation->rd_id,
         oldblkno);
 SET_PREDICATELOCKTARGETTAG_PAGE(newtargettag,
         relation->rd_node.dbNode,
         relation->rd_id,
         newblkno);

 LWLockAcquire(SerializablePredicateLockListLock, LW_EXCLUSIVE);





 success = TransferPredicateLocksToNewTarget(oldtargettag,
            newtargettag,
            0);

 if (!success)
 {






  success = GetParentPredicateLockTag(&oldtargettag,
           &newtargettag);
  Assert(success);
  success = TransferPredicateLocksToNewTarget(oldtargettag,
             newtargettag,
             1);
  Assert(success);
 }

 LWLockRelease(SerializablePredicateLockListLock);
}
