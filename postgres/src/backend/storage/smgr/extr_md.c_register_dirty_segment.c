
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int mdfd_vfd; int mdfd_segno; } ;
struct TYPE_7__ {int node; } ;
struct TYPE_8__ {TYPE_1__ smgr_rnode; } ;
typedef TYPE_2__* SMgrRelation ;
typedef TYPE_3__ MdfdVec ;
typedef int ForkNumber ;
typedef int FileTag ;


 int Assert (int) ;
 int DEBUG1 ;
 int ERROR ;
 int FilePathName (int ) ;
 scalar_t__ FileSync (int ,int ) ;
 int INIT_MD_FILETAG (int ,int ,int ,int ) ;
 int RegisterSyncRequest (int *,int ,int) ;
 int SYNC_REQUEST ;
 int SmgrIsTemp (TYPE_2__*) ;
 int WAIT_EVENT_DATA_FILE_SYNC ;
 int data_sync_elevel (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;

__attribute__((used)) static void
register_dirty_segment(SMgrRelation reln, ForkNumber forknum, MdfdVec *seg)
{
 FileTag tag;

 INIT_MD_FILETAG(tag, reln->smgr_rnode.node, forknum, seg->mdfd_segno);


 Assert(!SmgrIsTemp(reln));

 if (!RegisterSyncRequest(&tag, SYNC_REQUEST, 0 ))
 {
  ereport(DEBUG1,
    (errmsg("could not forward fsync request because request queue is full")));

  if (FileSync(seg->mdfd_vfd, WAIT_EVENT_DATA_FILE_SYNC) < 0)
   ereport(data_sync_elevel(ERROR),
     (errcode_for_file_access(),
      errmsg("could not fsync file \"%s\": %m",
       FilePathName(seg->mdfd_vfd))));
 }
}
