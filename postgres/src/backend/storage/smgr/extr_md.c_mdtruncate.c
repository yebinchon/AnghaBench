
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_10__ {int mdfd_vfd; } ;
struct TYPE_9__ {int* md_num_open_segs; TYPE_2__** md_seg_fds; int smgr_rnode; } ;
typedef TYPE_1__* SMgrRelation ;
typedef TYPE_2__ MdfdVec ;
typedef size_t ForkNumber ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BLCKSZ ;
 int ERROR ;
 int FileClose (int ) ;
 int FilePathName (int ) ;
 scalar_t__ FileTruncate (int ,int,int ) ;
 scalar_t__ InRecovery ;
 int RELSEG_SIZE ;
 int SmgrIsTemp (TYPE_1__*) ;
 int WAIT_EVENT_DATA_FILE_TRUNCATE ;
 int _fdvec_resize (TYPE_1__*,size_t,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ,...) ;
 int mdnblocks (TYPE_1__*,size_t) ;
 int register_dirty_segment (TYPE_1__*,size_t,TYPE_2__*) ;
 int relpath (int ,size_t) ;

void
mdtruncate(SMgrRelation reln, ForkNumber forknum, BlockNumber nblocks)
{
 BlockNumber curnblk;
 BlockNumber priorblocks;
 int curopensegs;





 curnblk = mdnblocks(reln, forknum);
 if (nblocks > curnblk)
 {

  if (InRecovery)
   return;
  ereport(ERROR,
    (errmsg("could not truncate file \"%s\" to %u blocks: it's only %u blocks now",
      relpath(reln->smgr_rnode, forknum),
      nblocks, curnblk)));
 }
 if (nblocks == curnblk)
  return;





 curopensegs = reln->md_num_open_segs[forknum];
 while (curopensegs > 0)
 {
  MdfdVec *v;

  priorblocks = (curopensegs - 1) * RELSEG_SIZE;

  v = &reln->md_seg_fds[forknum][curopensegs - 1];

  if (priorblocks > nblocks)
  {




   if (FileTruncate(v->mdfd_vfd, 0, WAIT_EVENT_DATA_FILE_TRUNCATE) < 0)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not truncate file \"%s\": %m",
        FilePathName(v->mdfd_vfd))));

   if (!SmgrIsTemp(reln))
    register_dirty_segment(reln, forknum, v);


   Assert(v != &reln->md_seg_fds[forknum][0]);

   FileClose(v->mdfd_vfd);
   _fdvec_resize(reln, forknum, curopensegs - 1);
  }
  else if (priorblocks + ((BlockNumber) RELSEG_SIZE) > nblocks)
  {







   BlockNumber lastsegblocks = nblocks - priorblocks;

   if (FileTruncate(v->mdfd_vfd, (off_t) lastsegblocks * BLCKSZ, WAIT_EVENT_DATA_FILE_TRUNCATE) < 0)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not truncate file \"%s\" to %u blocks: %m",
        FilePathName(v->mdfd_vfd),
        nblocks)));
   if (!SmgrIsTemp(reln))
    register_dirty_segment(reln, forknum, v);
  }
  else
  {




   break;
  }
  curopensegs--;
 }
}
