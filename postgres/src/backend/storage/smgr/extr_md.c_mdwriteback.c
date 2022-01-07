
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


 int Assert (int) ;
 scalar_t__ BLCKSZ ;
 int EXTENSION_RETURN_NULL ;
 int FileWriteback (int ,int,int,int ) ;
 int RELSEG_SIZE ;
 int WAIT_EVENT_DATA_FILE_FLUSH ;
 TYPE_1__* _mdfd_getseg (int ,int ,int,int,int ) ;

void
mdwriteback(SMgrRelation reln, ForkNumber forknum,
   BlockNumber blocknum, BlockNumber nblocks)
{




 while (nblocks > 0)
 {
  BlockNumber nflush = nblocks;
  off_t seekpos;
  MdfdVec *v;
  int segnum_start,
     segnum_end;

  v = _mdfd_getseg(reln, forknum, blocknum, 1 ,
       EXTENSION_RETURN_NULL);





  if (!v)
   return;


  segnum_start = blocknum / RELSEG_SIZE;


  segnum_end = (blocknum + nblocks - 1) / RELSEG_SIZE;
  if (segnum_start != segnum_end)
   nflush = RELSEG_SIZE - (blocknum % ((BlockNumber) RELSEG_SIZE));

  Assert(nflush >= 1);
  Assert(nflush <= nblocks);

  seekpos = (off_t) BLCKSZ * (blocknum % ((BlockNumber) RELSEG_SIZE));

  FileWriteback(v->mdfd_vfd, seekpos, (off_t) BLCKSZ * nflush, WAIT_EVENT_DATA_FILE_FLUSH);

  nblocks -= nflush;
  blocknum += nflush;
 }
}
