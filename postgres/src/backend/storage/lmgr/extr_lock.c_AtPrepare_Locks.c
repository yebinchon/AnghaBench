
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int lockmode; int locktag; } ;
typedef TYPE_3__ TwoPhaseLockRecord ;
struct TYPE_10__ {int myLock; } ;
struct TYPE_16__ {TYPE_1__ tag; } ;
struct TYPE_15__ {scalar_t__ locktag_type; } ;
struct TYPE_11__ {int mode; TYPE_6__ lock; } ;
struct TYPE_14__ {scalar_t__ nLocks; int numLockOwners; int holdsStrongLockCount; TYPE_2__ tag; TYPE_8__* proclock; int lock; TYPE_4__* lockOwners; } ;
struct TYPE_13__ {int * owner; } ;
typedef int LOCKTAG ;
typedef TYPE_4__ LOCALLOCKOWNER ;
typedef TYPE_5__ LOCALLOCK ;
typedef int HASH_SEQ_STATUS ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 TYPE_8__* FastPathGetRelationLockEntry (TYPE_5__*) ;
 scalar_t__ LOCKTAG_VIRTUALTRANSACTION ;
 int LockMethodLocalHash ;
 int RegisterTwoPhaseRecord (int ,int ,TYPE_3__*,int) ;
 int TWOPHASE_RM_LOCK_ID ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 int memcpy (int *,TYPE_6__*,int) ;

void
AtPrepare_Locks(void)
{
 HASH_SEQ_STATUS status;
 LOCALLOCK *locallock;







 hash_seq_init(&status, LockMethodLocalHash);

 while ((locallock = (LOCALLOCK *) hash_seq_search(&status)) != ((void*)0))
 {
  TwoPhaseLockRecord record;
  LOCALLOCKOWNER *lockOwners = locallock->lockOwners;
  bool haveSessionLock;
  bool haveXactLock;
  int i;





  if (locallock->tag.lock.locktag_type == LOCKTAG_VIRTUALTRANSACTION)
   continue;


  if (locallock->nLocks <= 0)
   continue;


  haveSessionLock = haveXactLock = 0;
  for (i = locallock->numLockOwners - 1; i >= 0; i--)
  {
   if (lockOwners[i].owner == ((void*)0))
    haveSessionLock = 1;
   else
    haveXactLock = 1;
  }


  if (!haveXactLock)
   continue;
  if (haveSessionLock)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot PREPARE while holding both session-level and transaction-level locks on the same object")));







  if (locallock->proclock == ((void*)0))
  {
   locallock->proclock = FastPathGetRelationLockEntry(locallock);
   locallock->lock = locallock->proclock->tag.myLock;
  }






  locallock->holdsStrongLockCount = 0;




  memcpy(&(record.locktag), &(locallock->tag.lock), sizeof(LOCKTAG));
  record.lockmode = locallock->tag.mode;

  RegisterTwoPhaseRecord(TWOPHASE_RM_LOCK_ID, 0,
          &record, sizeof(TwoPhaseLockRecord));
 }
}
