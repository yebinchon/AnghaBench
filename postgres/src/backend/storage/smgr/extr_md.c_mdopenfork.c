
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ mdfd_segno; scalar_t__ mdfd_vfd; } ;
struct TYPE_8__ {scalar_t__* md_num_open_segs; TYPE_2__** md_seg_fds; int smgr_rnode; } ;
typedef TYPE_1__* SMgrRelation ;
typedef TYPE_2__ MdfdVec ;
typedef size_t ForkNumber ;
typedef scalar_t__ File ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int ERROR ;
 int EXTENSION_RETURN_NULL ;
 scalar_t__ FILE_POSSIBLY_DELETED (int ) ;
 int O_RDWR ;
 int PG_BINARY ;
 scalar_t__ PathNameOpenFile (char*,int) ;
 scalar_t__ RELSEG_SIZE ;
 int _fdvec_resize (TYPE_1__*,size_t,int) ;
 scalar_t__ _mdnblocks (TYPE_1__*,size_t,TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int errno ;
 int pfree (char*) ;
 char* relpath (int ,size_t) ;

__attribute__((used)) static MdfdVec *
mdopenfork(SMgrRelation reln, ForkNumber forknum, int behavior)
{
 MdfdVec *mdfd;
 char *path;
 File fd;


 if (reln->md_num_open_segs[forknum] > 0)
  return &reln->md_seg_fds[forknum][0];

 path = relpath(reln->smgr_rnode, forknum);

 fd = PathNameOpenFile(path, O_RDWR | PG_BINARY);

 if (fd < 0)
 {
  if ((behavior & EXTENSION_RETURN_NULL) &&
   FILE_POSSIBLY_DELETED(errno))
  {
   pfree(path);
   return ((void*)0);
  }
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\": %m", path)));
 }

 pfree(path);

 _fdvec_resize(reln, forknum, 1);
 mdfd = &reln->md_seg_fds[forknum][0];
 mdfd->mdfd_vfd = fd;
 mdfd->mdfd_segno = 0;

 Assert(_mdnblocks(reln, forknum, mdfd) <= ((BlockNumber) RELSEG_SIZE));

 return mdfd;
}
