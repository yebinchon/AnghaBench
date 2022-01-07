
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dbNode; int spcNode; } ;
struct TYPE_10__ {TYPE_1__ node; } ;
struct TYPE_9__ {scalar_t__ mdfd_segno; scalar_t__ mdfd_vfd; } ;
struct TYPE_8__ {scalar_t__* md_num_open_segs; TYPE_3__** md_seg_fds; TYPE_4__ smgr_rnode; } ;
typedef TYPE_2__* SMgrRelation ;
typedef TYPE_3__ MdfdVec ;
typedef size_t ForkNumber ;
typedef scalar_t__ File ;


 int Assert (int) ;
 int ERROR ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int PG_BINARY ;
 scalar_t__ PathNameOpenFile (char*,int) ;
 int TablespaceCreateDbspace (int ,int ,int) ;
 int _fdvec_resize (TYPE_2__*,size_t,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int errno ;
 int pfree (char*) ;
 char* relpath (TYPE_4__,size_t) ;

void
mdcreate(SMgrRelation reln, ForkNumber forkNum, bool isRedo)
{
 MdfdVec *mdfd;
 char *path;
 File fd;

 if (isRedo && reln->md_num_open_segs[forkNum] > 0)
  return;

 Assert(reln->md_num_open_segs[forkNum] == 0);
 TablespaceCreateDbspace(reln->smgr_rnode.node.spcNode,
       reln->smgr_rnode.node.dbNode,
       isRedo);

 path = relpath(reln->smgr_rnode, forkNum);

 fd = PathNameOpenFile(path, O_RDWR | O_CREAT | O_EXCL | PG_BINARY);

 if (fd < 0)
 {
  int save_errno = errno;

  if (isRedo)
   fd = PathNameOpenFile(path, O_RDWR | PG_BINARY);
  if (fd < 0)
  {

   errno = save_errno;
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not create file \"%s\": %m", path)));
  }
 }

 pfree(path);

 _fdvec_resize(reln, forkNum, 1);
 mdfd = &reln->md_seg_fds[forkNum][0];
 mdfd->mdfd_vfd = fd;
 mdfd->mdfd_segno = 0;
}
