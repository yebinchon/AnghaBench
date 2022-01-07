
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_11__ {int mdfd_vfd; } ;
struct TYPE_8__ {int relNode; int dbNode; int spcNode; } ;
struct TYPE_9__ {int backend; TYPE_1__ node; } ;
struct TYPE_10__ {TYPE_2__ smgr_rnode; } ;
typedef TYPE_3__* SMgrRelation ;
typedef TYPE_4__ MdfdVec ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BLCKSZ ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int EXTENSION_CREATE_RECOVERY ;
 int EXTENSION_FAIL ;
 int FilePathName (int ) ;
 int FileRead (int ,char*,int,int,int ) ;
 scalar_t__ InRecovery ;
 int MemSet (char*,int ,int) ;
 int RELSEG_SIZE ;
 int TRACE_POSTGRESQL_SMGR_MD_READ_DONE (int ,int,int ,int ,int ,int ,int,int) ;
 int TRACE_POSTGRESQL_SMGR_MD_READ_START (int ,int,int ,int ,int ,int ) ;
 int WAIT_EVENT_DATA_FILE_READ ;
 TYPE_4__* _mdfd_getseg (TYPE_3__*,int ,int,int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int,int ,...) ;
 scalar_t__ zero_damaged_pages ;

void
mdread(SMgrRelation reln, ForkNumber forknum, BlockNumber blocknum,
    char *buffer)
{
 off_t seekpos;
 int nbytes;
 MdfdVec *v;

 TRACE_POSTGRESQL_SMGR_MD_READ_START(forknum, blocknum,
          reln->smgr_rnode.node.spcNode,
          reln->smgr_rnode.node.dbNode,
          reln->smgr_rnode.node.relNode,
          reln->smgr_rnode.backend);

 v = _mdfd_getseg(reln, forknum, blocknum, 0,
      EXTENSION_FAIL | EXTENSION_CREATE_RECOVERY);

 seekpos = (off_t) BLCKSZ * (blocknum % ((BlockNumber) RELSEG_SIZE));

 Assert(seekpos < (off_t) BLCKSZ * RELSEG_SIZE);

 nbytes = FileRead(v->mdfd_vfd, buffer, BLCKSZ, seekpos, WAIT_EVENT_DATA_FILE_READ);

 TRACE_POSTGRESQL_SMGR_MD_READ_DONE(forknum, blocknum,
            reln->smgr_rnode.node.spcNode,
            reln->smgr_rnode.node.dbNode,
            reln->smgr_rnode.node.relNode,
            reln->smgr_rnode.backend,
            nbytes,
            BLCKSZ);

 if (nbytes != BLCKSZ)
 {
  if (nbytes < 0)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not read block %u in file \"%s\": %m",
       blocknum, FilePathName(v->mdfd_vfd))));
  if (zero_damaged_pages || InRecovery)
   MemSet(buffer, 0, BLCKSZ);
  else
   ereport(ERROR,
     (errcode(ERRCODE_DATA_CORRUPTED),
      errmsg("could not read block %u in file \"%s\": read only %d of %d bytes",
       blocknum, FilePathName(v->mdfd_vfd),
       nbytes, BLCKSZ)));
 }
}
