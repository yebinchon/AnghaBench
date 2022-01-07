
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mdfd_vfd; } ;
struct TYPE_5__ {int* md_num_open_segs; TYPE_2__** md_seg_fds; } ;
typedef TYPE_1__* SMgrRelation ;
typedef TYPE_2__ MdfdVec ;
typedef size_t ForkNumber ;


 int ERROR ;
 int FilePathName (int ) ;
 scalar_t__ FileSync (int ,int ) ;
 int WAIT_EVENT_DATA_FILE_IMMEDIATE_SYNC ;
 int data_sync_elevel (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 int mdnblocks (TYPE_1__*,size_t) ;

void
mdimmedsync(SMgrRelation reln, ForkNumber forknum)
{
 int segno;





 mdnblocks(reln, forknum);

 segno = reln->md_num_open_segs[forknum];

 while (segno > 0)
 {
  MdfdVec *v = &reln->md_seg_fds[forknum][segno - 1];

  if (FileSync(v->mdfd_vfd, WAIT_EVENT_DATA_FILE_IMMEDIATE_SYNC) < 0)
   ereport(data_sync_elevel(ERROR),
     (errcode_for_file_access(),
      errmsg("could not fsync file \"%s\": %m",
       FilePathName(v->mdfd_vfd))));
  segno--;
 }
}
