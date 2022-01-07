
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int smgr_rnode; } ;
typedef TYPE_1__* SMgrRelation ;
typedef int ForkNumber ;
typedef scalar_t__ BlockNumber ;


 int pfree (char*) ;
 char* psprintf (char*,char*,scalar_t__) ;
 char* relpath (int ,int ) ;

__attribute__((used)) static char *
_mdfd_segpath(SMgrRelation reln, ForkNumber forknum, BlockNumber segno)
{
 char *path,
      *fullpath;

 path = relpath(reln->smgr_rnode, forknum);

 if (segno > 0)
 {
  fullpath = psprintf("%s.%u", path, segno);
  pfree(path);
 }
 else
  fullpath = path;

 return fullpath;
}
