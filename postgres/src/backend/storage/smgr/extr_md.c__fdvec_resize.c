
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* md_num_open_segs; int ** md_seg_fds; } ;
typedef TYPE_1__* SMgrRelation ;
typedef int MdfdVec ;
typedef size_t ForkNumber ;


 int MdCxt ;
 int * MemoryContextAlloc (int ,int) ;
 int pfree (int *) ;
 int * repalloc (int *,int) ;

__attribute__((used)) static void
_fdvec_resize(SMgrRelation reln,
     ForkNumber forknum,
     int nseg)
{
 if (nseg == 0)
 {
  if (reln->md_num_open_segs[forknum] > 0)
  {
   pfree(reln->md_seg_fds[forknum]);
   reln->md_seg_fds[forknum] = ((void*)0);
  }
 }
 else if (reln->md_num_open_segs[forknum] == 0)
 {
  reln->md_seg_fds[forknum] =
   MemoryContextAlloc(MdCxt, sizeof(MdfdVec) * nseg);
 }
 else
 {






  reln->md_seg_fds[forknum] =
   repalloc(reln->md_seg_fds[forknum],
      sizeof(MdfdVec) * nseg);
 }

 reln->md_num_open_segs[forknum] = nseg;
}
