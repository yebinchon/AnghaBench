
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


 int FileClose (int) ;
 int _fdvec_resize (TYPE_1__*,size_t,int ) ;

void
mdclose(SMgrRelation reln, ForkNumber forknum)
{
 int nopensegs = reln->md_num_open_segs[forknum];


 if (nopensegs == 0)
  return;


 while (nopensegs > 0)
 {
  MdfdVec *v = &reln->md_seg_fds[forknum][nopensegs - 1];


  if (v->mdfd_vfd >= 0)
  {
   FileClose(v->mdfd_vfd);
   v->mdfd_vfd = -1;
  }

  nopensegs--;
 }


 _fdvec_resize(reln, forknum, 0);
}
