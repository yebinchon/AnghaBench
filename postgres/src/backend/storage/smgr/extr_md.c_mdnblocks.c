
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* md_num_open_segs; int ** md_seg_fds; } ;
typedef TYPE_1__* SMgrRelation ;
typedef int MdfdVec ;
typedef size_t ForkNumber ;
typedef size_t BlockNumber ;


 int Assert (int) ;
 int EXTENSION_FAIL ;
 int FATAL ;
 scalar_t__ RELSEG_SIZE ;
 int * _mdfd_openseg (TYPE_1__*,size_t,size_t,int ) ;
 size_t _mdnblocks (TYPE_1__*,size_t,int *) ;
 int elog (int ,char*) ;
 int * mdopenfork (TYPE_1__*,size_t,int ) ;

BlockNumber
mdnblocks(SMgrRelation reln, ForkNumber forknum)
{
 MdfdVec *v = mdopenfork(reln, forknum, EXTENSION_FAIL);
 BlockNumber nblocks;
 BlockNumber segno = 0;


 Assert(reln->md_num_open_segs[forknum] > 0);
 segno = reln->md_num_open_segs[forknum] - 1;
 v = &reln->md_seg_fds[forknum][segno];

 for (;;)
 {
  nblocks = _mdnblocks(reln, forknum, v);
  if (nblocks > ((BlockNumber) RELSEG_SIZE))
   elog(FATAL, "segment too big");
  if (nblocks < ((BlockNumber) RELSEG_SIZE))
   return (segno * ((BlockNumber) RELSEG_SIZE)) + nblocks;




  segno++;
  v = _mdfd_openseg(reln, forknum, segno, 0);
  if (v == ((void*)0))
   return segno * ((BlockNumber) RELSEG_SIZE);
 }
}
