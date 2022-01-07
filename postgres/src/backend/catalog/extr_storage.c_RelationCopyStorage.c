
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_10__ {int node; int backend; } ;
struct TYPE_11__ {TYPE_1__ smgr_rnode; } ;
typedef TYPE_2__* SMgrRelation ;
typedef scalar_t__ Page ;
typedef TYPE_3__ PGAlignedBlock ;
typedef scalar_t__ ForkNumber ;
typedef scalar_t__ BlockNumber ;


 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 scalar_t__ INIT_FORKNUM ;
 int PageIsVerified (scalar_t__,scalar_t__) ;
 int PageSetChecksumInplace (scalar_t__,scalar_t__) ;
 char RELPERSISTENCE_PERMANENT ;
 char RELPERSISTENCE_UNLOGGED ;
 scalar_t__ XLogIsNeeded () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__,int ) ;
 int log_newpage (int *,scalar_t__,scalar_t__,scalar_t__,int) ;
 int relpathbackend (int ,int ,scalar_t__) ;
 int smgrextend (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int) ;
 int smgrimmedsync (TYPE_2__*,scalar_t__) ;
 scalar_t__ smgrnblocks (TYPE_2__*,scalar_t__) ;
 int smgrread (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ;

void
RelationCopyStorage(SMgrRelation src, SMgrRelation dst,
     ForkNumber forkNum, char relpersistence)
{
 PGAlignedBlock buf;
 Page page;
 bool use_wal;
 bool copying_initfork;
 BlockNumber nblocks;
 BlockNumber blkno;

 page = (Page) buf.data;






 copying_initfork = relpersistence == RELPERSISTENCE_UNLOGGED &&
  forkNum == INIT_FORKNUM;





 use_wal = XLogIsNeeded() &&
  (relpersistence == RELPERSISTENCE_PERMANENT || copying_initfork);

 nblocks = smgrnblocks(src, forkNum);

 for (blkno = 0; blkno < nblocks; blkno++)
 {

  CHECK_FOR_INTERRUPTS();

  smgrread(src, forkNum, blkno, buf.data);

  if (!PageIsVerified(page, blkno))
   ereport(ERROR,
     (errcode(ERRCODE_DATA_CORRUPTED),
      errmsg("invalid page in block %u of relation %s",
       blkno,
       relpathbackend(src->smgr_rnode.node,
             src->smgr_rnode.backend,
             forkNum))));






  if (use_wal)
   log_newpage(&dst->smgr_rnode.node, forkNum, blkno, page, 0);

  PageSetChecksumInplace(page, blkno);






  smgrextend(dst, forkNum, blkno, buf.data, 1);
 }
 if (relpersistence == RELPERSISTENCE_PERMANENT || copying_initfork)
  smgrimmedsync(dst, forkNum);
}
