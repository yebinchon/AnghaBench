
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int segno; int forknum; int rnode; } ;
struct TYPE_5__ {int mdfd_vfd; } ;
typedef int SMgrRelation ;
typedef TYPE_1__ MdfdVec ;
typedef TYPE_2__ FileTag ;
typedef int BlockNumber ;


 int EXTENSION_DONT_CHECK_SIZE ;
 int EXTENSION_RETURN_NULL ;
 int FileSync (int ,int ) ;
 int InvalidBackendId ;
 int MAXPGPATH ;
 scalar_t__ RELSEG_SIZE ;
 int WAIT_EVENT_DATA_FILE_SYNC ;
 TYPE_1__* _mdfd_getseg (int ,int ,int,int,int) ;
 char* _mdfd_segpath (int ,int ,int) ;
 int pfree (char*) ;
 int smgropen (int ,int ) ;
 int strlcpy (char*,char*,int ) ;

int
mdsyncfiletag(const FileTag *ftag, char *path)
{
 SMgrRelation reln = smgropen(ftag->rnode, InvalidBackendId);
 MdfdVec *v;
 char *p;


 p = _mdfd_segpath(reln, ftag->forknum, ftag->segno);
 strlcpy(path, p, MAXPGPATH);
 pfree(p);


 v = _mdfd_getseg(reln,
      ftag->forknum,
      ftag->segno * (BlockNumber) RELSEG_SIZE,
      0,
      EXTENSION_RETURN_NULL | EXTENSION_DONT_CHECK_SIZE);
 if (v == ((void*)0))
  return -1;


 return FileSync(v->mdfd_vfd, WAIT_EVENT_DATA_FILE_SYNC);
}
