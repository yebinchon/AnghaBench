
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ smgr_fsm_nblocks; } ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {TYPE_3__* rd_smgr; } ;
typedef TYPE_1__* Relation ;
typedef int Page ;
typedef TYPE_2__ PGAlignedBlock ;
typedef scalar_t__ BlockNumber ;


 int BLCKSZ ;
 int ExclusiveLock ;
 int FSM_FORKNUM ;
 scalar_t__ InvalidBlockNumber ;
 int LockRelationForExtension (TYPE_1__*,int ) ;
 int PageInit (int ,int ,int ) ;
 int PageSetChecksumInplace (int ,scalar_t__) ;
 int RelationOpenSmgr (TYPE_1__*) ;
 int UnlockRelationForExtension (TYPE_1__*,int ) ;
 int smgrcreate (TYPE_3__*,int ,int) ;
 int smgrexists (TYPE_3__*,int ) ;
 int smgrextend (TYPE_3__*,int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ smgrnblocks (TYPE_3__*,int ) ;

__attribute__((used)) static void
fsm_extend(Relation rel, BlockNumber fsm_nblocks)
{
 BlockNumber fsm_nblocks_now;
 PGAlignedBlock pg;

 PageInit((Page) pg.data, BLCKSZ, 0);
 LockRelationForExtension(rel, ExclusiveLock);


 RelationOpenSmgr(rel);





 if ((rel->rd_smgr->smgr_fsm_nblocks == 0 ||
   rel->rd_smgr->smgr_fsm_nblocks == InvalidBlockNumber) &&
  !smgrexists(rel->rd_smgr, FSM_FORKNUM))
  smgrcreate(rel->rd_smgr, FSM_FORKNUM, 0);

 fsm_nblocks_now = smgrnblocks(rel->rd_smgr, FSM_FORKNUM);

 while (fsm_nblocks_now < fsm_nblocks)
 {
  PageSetChecksumInplace((Page) pg.data, fsm_nblocks_now);

  smgrextend(rel->rd_smgr, FSM_FORKNUM, fsm_nblocks_now,
       pg.data, 0);
  fsm_nblocks_now++;
 }


 rel->rd_smgr->smgr_fsm_nblocks = fsm_nblocks_now;

 UnlockRelationForExtension(rel, ExclusiveLock);
}
