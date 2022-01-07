
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_15__ {int mdfd_vfd; } ;
struct TYPE_12__ {int relNode; int dbNode; int spcNode; } ;
struct TYPE_13__ {int backend; TYPE_1__ node; } ;
struct TYPE_14__ {TYPE_2__ smgr_rnode; } ;
typedef TYPE_3__* SMgrRelation ;
typedef TYPE_4__ MdfdVec ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BLCKSZ ;
 int ERRCODE_DISK_FULL ;
 int ERROR ;
 int EXTENSION_CREATE_RECOVERY ;
 int EXTENSION_FAIL ;
 int FilePathName (int ) ;
 int FileWrite (int ,char*,int,int,int ) ;
 int RELSEG_SIZE ;
 int SmgrIsTemp (TYPE_3__*) ;
 int TRACE_POSTGRESQL_SMGR_MD_WRITE_DONE (int ,int,int ,int ,int ,int ,int,int) ;
 int TRACE_POSTGRESQL_SMGR_MD_WRITE_START (int ,int,int ,int ,int ,int ) ;
 int WAIT_EVENT_DATA_FILE_WRITE ;
 TYPE_4__* _mdfd_getseg (TYPE_3__*,int ,int,int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errhint (char*) ;
 int errmsg (char*,int,int ,...) ;
 int mdnblocks (TYPE_3__*,int ) ;
 int register_dirty_segment (TYPE_3__*,int ,TYPE_4__*) ;

void
mdwrite(SMgrRelation reln, ForkNumber forknum, BlockNumber blocknum,
  char *buffer, bool skipFsync)
{
 off_t seekpos;
 int nbytes;
 MdfdVec *v;






 TRACE_POSTGRESQL_SMGR_MD_WRITE_START(forknum, blocknum,
           reln->smgr_rnode.node.spcNode,
           reln->smgr_rnode.node.dbNode,
           reln->smgr_rnode.node.relNode,
           reln->smgr_rnode.backend);

 v = _mdfd_getseg(reln, forknum, blocknum, skipFsync,
      EXTENSION_FAIL | EXTENSION_CREATE_RECOVERY);

 seekpos = (off_t) BLCKSZ * (blocknum % ((BlockNumber) RELSEG_SIZE));

 Assert(seekpos < (off_t) BLCKSZ * RELSEG_SIZE);

 nbytes = FileWrite(v->mdfd_vfd, buffer, BLCKSZ, seekpos, WAIT_EVENT_DATA_FILE_WRITE);

 TRACE_POSTGRESQL_SMGR_MD_WRITE_DONE(forknum, blocknum,
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
      errmsg("could not write block %u in file \"%s\": %m",
       blocknum, FilePathName(v->mdfd_vfd))));

  ereport(ERROR,
    (errcode(ERRCODE_DISK_FULL),
     errmsg("could not write block %u in file \"%s\": wrote only %d of %d bytes",
      blocknum,
      FilePathName(v->mdfd_vfd),
      nbytes, BLCKSZ),
     errhint("Check free disk space.")));
 }

 if (!skipFsync && !SmgrIsTemp(reln))
  register_dirty_segment(reln, forknum, v);
}
