
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int mdfd_vfd; } ;
typedef int SMgrRelation ;
typedef TYPE_1__ MdfdVec ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 int BLCKSZ ;
 int ERROR ;
 int FilePathName (int ) ;
 int FileSize (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;

__attribute__((used)) static BlockNumber
_mdnblocks(SMgrRelation reln, ForkNumber forknum, MdfdVec *seg)
{
 off_t len;

 len = FileSize(seg->mdfd_vfd);
 if (len < 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not seek to end of file \"%s\": %m",
      FilePathName(seg->mdfd_vfd))));

 return (BlockNumber) (len / BLCKSZ);
}
