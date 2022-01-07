
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_13__ {int mdfd_vfd; } ;
struct TYPE_12__ {int smgr_rnode; } ;
typedef TYPE_1__* SMgrRelation ;
typedef TYPE_2__ MdfdVec ;
typedef int ForkNumber ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BLCKSZ ;
 int ERRCODE_DISK_FULL ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int EXTENSION_CREATE ;
 int FilePathName (int ) ;
 int FileWrite (int ,char*,int,scalar_t__,int ) ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ RELSEG_SIZE ;
 int SmgrIsTemp (TYPE_1__*) ;
 int WAIT_EVENT_DATA_FILE_EXTEND ;
 TYPE_2__* _mdfd_getseg (TYPE_1__*,int ,scalar_t__,int,int ) ;
 scalar_t__ _mdnblocks (TYPE_1__*,int ,TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errhint (char*) ;
 int errmsg (char*,int ,...) ;
 scalar_t__ mdnblocks (TYPE_1__*,int ) ;
 int register_dirty_segment (TYPE_1__*,int ,TYPE_2__*) ;
 int relpath (int ,int ) ;

void
mdextend(SMgrRelation reln, ForkNumber forknum, BlockNumber blocknum,
   char *buffer, bool skipFsync)
{
 off_t seekpos;
 int nbytes;
 MdfdVec *v;
 if (blocknum == InvalidBlockNumber)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("cannot extend file \"%s\" beyond %u blocks",
      relpath(reln->smgr_rnode, forknum),
      InvalidBlockNumber)));

 v = _mdfd_getseg(reln, forknum, blocknum, skipFsync, EXTENSION_CREATE);

 seekpos = (off_t) BLCKSZ * (blocknum % ((BlockNumber) RELSEG_SIZE));

 Assert(seekpos < (off_t) BLCKSZ * RELSEG_SIZE);

 if ((nbytes = FileWrite(v->mdfd_vfd, buffer, BLCKSZ, seekpos, WAIT_EVENT_DATA_FILE_EXTEND)) != BLCKSZ)
 {
  if (nbytes < 0)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not extend file \"%s\": %m",
       FilePathName(v->mdfd_vfd)),
      errhint("Check free disk space.")));

  ereport(ERROR,
    (errcode(ERRCODE_DISK_FULL),
     errmsg("could not extend file \"%s\": wrote only %d of %d bytes at block %u",
      FilePathName(v->mdfd_vfd),
      nbytes, BLCKSZ, blocknum),
     errhint("Check free disk space.")));
 }

 if (!skipFsync && !SmgrIsTemp(reln))
  register_dirty_segment(reln, forknum, v);

 Assert(_mdnblocks(reln, forknum, v) <= ((BlockNumber) RELSEG_SIZE));
}
