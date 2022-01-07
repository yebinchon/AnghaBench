
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xlrec ;
struct TYPE_11__ {int flags; int rnode; int blkno; } ;
typedef TYPE_1__ xl_smgr_truncate ;
typedef int XLogRecPtr ;
struct TYPE_13__ {void* smgr_vm_nblocks; void* smgr_fsm_nblocks; void* smgr_targblock; } ;
struct TYPE_12__ {TYPE_4__* rd_smgr; int rd_node; } ;
typedef TYPE_2__* Relation ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 scalar_t__ BlockNumberIsValid (int ) ;
 int FSM_FORKNUM ;
 int FreeSpaceMapPrepareTruncateRel (TYPE_2__*,int ) ;
 int FreeSpaceMapVacuumRange (TYPE_2__*,int ,void*) ;
 void* InvalidBlockNumber ;
 int MAIN_FORKNUM ;
 int MAX_FORKNUM ;
 int RM_SMGR_ID ;
 scalar_t__ RelationNeedsWAL (TYPE_2__*) ;
 int RelationOpenSmgr (TYPE_2__*) ;
 int SMGR_TRUNCATE_ALL ;
 int VISIBILITYMAP_FORKNUM ;
 int XLOG_SMGR_TRUNCATE ;
 int XLR_SPECIAL_REL_UPDATE ;
 int XLogBeginInsert () ;
 int XLogFlush (int ) ;
 int XLogInsert (int ,int) ;
 int XLogRegisterData (char*,int) ;
 int smgrexists (TYPE_4__*,int ) ;
 int smgrtruncate (TYPE_4__*,int *,int,int *) ;
 int visibilitymap_prepare_truncate (TYPE_2__*,int ) ;

void
RelationTruncate(Relation rel, BlockNumber nblocks)
{
 bool fsm;
 bool vm;
 bool need_fsm_vacuum = 0;
 ForkNumber forks[MAX_FORKNUM];
 BlockNumber blocks[MAX_FORKNUM];
 int nforks = 0;


 RelationOpenSmgr(rel);




 rel->rd_smgr->smgr_targblock = InvalidBlockNumber;
 rel->rd_smgr->smgr_fsm_nblocks = InvalidBlockNumber;
 rel->rd_smgr->smgr_vm_nblocks = InvalidBlockNumber;


 forks[nforks] = MAIN_FORKNUM;
 blocks[nforks] = nblocks;
 nforks++;


 fsm = smgrexists(rel->rd_smgr, FSM_FORKNUM);
 if (fsm)
 {
  blocks[nforks] = FreeSpaceMapPrepareTruncateRel(rel, nblocks);
  if (BlockNumberIsValid(blocks[nforks]))
  {
   forks[nforks] = FSM_FORKNUM;
   nforks++;
   need_fsm_vacuum = 1;
  }
 }


 vm = smgrexists(rel->rd_smgr, VISIBILITYMAP_FORKNUM);
 if (vm)
 {
  blocks[nforks] = visibilitymap_prepare_truncate(rel, nblocks);
  if (BlockNumberIsValid(blocks[nforks]))
  {
   forks[nforks] = VISIBILITYMAP_FORKNUM;
   nforks++;
  }
 }
 if (RelationNeedsWAL(rel))
 {



  XLogRecPtr lsn;
  xl_smgr_truncate xlrec;

  xlrec.blkno = nblocks;
  xlrec.rnode = rel->rd_node;
  xlrec.flags = SMGR_TRUNCATE_ALL;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, sizeof(xlrec));

  lsn = XLogInsert(RM_SMGR_ID,
       XLOG_SMGR_TRUNCATE | XLR_SPECIAL_REL_UPDATE);
  if (fsm || vm)
   XLogFlush(lsn);
 }


 smgrtruncate(rel->rd_smgr, forks, nforks, blocks);






 if (need_fsm_vacuum)
  FreeSpaceMapVacuumRange(rel, nblocks, InvalidBlockNumber);
}
