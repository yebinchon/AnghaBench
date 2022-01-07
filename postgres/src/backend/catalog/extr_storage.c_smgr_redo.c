
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; int blkno; int rnode; } ;
typedef TYPE_1__ xl_smgr_truncate ;
struct TYPE_9__ {int forkNum; int rnode; } ;
typedef TYPE_2__ xl_smgr_create ;
typedef scalar_t__ uint8 ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int EndRecPtr; } ;
typedef TYPE_3__ XLogReaderState ;
typedef int SMgrRelation ;
typedef int Relation ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ BlockNumberIsValid (int ) ;
 int CreateFakeRelcacheEntry (int ) ;
 int FSM_FORKNUM ;
 int FreeFakeRelcacheEntry (int ) ;
 int FreeSpaceMapPrepareTruncateRel (int ,int ) ;
 int FreeSpaceMapVacuumRange (int ,int ,int ) ;
 int InvalidBackendId ;
 int InvalidBlockNumber ;
 int MAIN_FORKNUM ;
 int MAX_FORKNUM ;
 int PANIC ;
 int SMGR_TRUNCATE_FSM ;
 int SMGR_TRUNCATE_HEAP ;
 int SMGR_TRUNCATE_VM ;
 int VISIBILITYMAP_FORKNUM ;
 scalar_t__ XLOG_SMGR_CREATE ;
 scalar_t__ XLOG_SMGR_TRUNCATE ;
 scalar_t__ XLR_INFO_MASK ;
 int XLogFlush (int ) ;
 scalar_t__ XLogRecGetData (TYPE_3__*) ;
 scalar_t__ XLogRecGetInfo (TYPE_3__*) ;
 int XLogRecHasAnyBlockRefs (TYPE_3__*) ;
 int XLogTruncateRelation (int ,int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 int smgrcreate (int ,int ,int) ;
 scalar_t__ smgrexists (int ,int ) ;
 int smgropen (int ,int ) ;
 int smgrtruncate (int ,int *,int,int *) ;
 int visibilitymap_prepare_truncate (int ,int ) ;

void
smgr_redo(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;


 Assert(!XLogRecHasAnyBlockRefs(record));

 if (info == XLOG_SMGR_CREATE)
 {
  xl_smgr_create *xlrec = (xl_smgr_create *) XLogRecGetData(record);
  SMgrRelation reln;

  reln = smgropen(xlrec->rnode, InvalidBackendId);
  smgrcreate(reln, xlrec->forkNum, 1);
 }
 else if (info == XLOG_SMGR_TRUNCATE)
 {
  xl_smgr_truncate *xlrec = (xl_smgr_truncate *) XLogRecGetData(record);
  SMgrRelation reln;
  Relation rel;
  ForkNumber forks[MAX_FORKNUM];
  BlockNumber blocks[MAX_FORKNUM];
  int nforks = 0;
  bool need_fsm_vacuum = 0;

  reln = smgropen(xlrec->rnode, InvalidBackendId);







  smgrcreate(reln, MAIN_FORKNUM, 1);
  XLogFlush(lsn);


  if ((xlrec->flags & SMGR_TRUNCATE_HEAP) != 0)
  {
   forks[nforks] = MAIN_FORKNUM;
   blocks[nforks] = xlrec->blkno;
   nforks++;


   XLogTruncateRelation(xlrec->rnode, MAIN_FORKNUM, xlrec->blkno);
  }


  rel = CreateFakeRelcacheEntry(xlrec->rnode);

  if ((xlrec->flags & SMGR_TRUNCATE_FSM) != 0 &&
   smgrexists(reln, FSM_FORKNUM))
  {
   blocks[nforks] = FreeSpaceMapPrepareTruncateRel(rel, xlrec->blkno);
   if (BlockNumberIsValid(blocks[nforks]))
   {
    forks[nforks] = FSM_FORKNUM;
    nforks++;
    need_fsm_vacuum = 1;
   }
  }
  if ((xlrec->flags & SMGR_TRUNCATE_VM) != 0 &&
   smgrexists(reln, VISIBILITYMAP_FORKNUM))
  {
   blocks[nforks] = visibilitymap_prepare_truncate(rel, xlrec->blkno);
   if (BlockNumberIsValid(blocks[nforks]))
   {
    forks[nforks] = VISIBILITYMAP_FORKNUM;
    nforks++;
   }
  }


  if (nforks > 0)
   smgrtruncate(reln, forks, nforks, blocks);






  if (need_fsm_vacuum)
   FreeSpaceMapVacuumRange(rel, xlrec->blkno,
         InvalidBlockNumber);

  FreeFakeRelcacheEntry(rel);
 }
 else
  elog(PANIC, "smgr_redo: unknown op code %u", info);
}
