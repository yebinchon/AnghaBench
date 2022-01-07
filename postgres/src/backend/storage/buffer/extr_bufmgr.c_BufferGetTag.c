
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int blockNum; int forkNum; int rnode; } ;
struct TYPE_6__ {TYPE_1__ tag; } ;
typedef int RelFileNode ;
typedef int ForkNumber ;
typedef TYPE_2__ BufferDesc ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int ) ;
 scalar_t__ BufferIsLocal (int) ;
 int BufferIsPinned (int) ;
 TYPE_2__* GetBufferDescriptor (int) ;
 TYPE_2__* GetLocalBufferDescriptor (int) ;

void
BufferGetTag(Buffer buffer, RelFileNode *rnode, ForkNumber *forknum,
    BlockNumber *blknum)
{
 BufferDesc *bufHdr;


 Assert(BufferIsPinned(buffer));

 if (BufferIsLocal(buffer))
  bufHdr = GetLocalBufferDescriptor(-buffer - 1);
 else
  bufHdr = GetBufferDescriptor(buffer - 1);


 *rnode = bufHdr->tag.rnode;
 *forknum = bufHdr->tag.forkNum;
 *blknum = bufHdr->tag.blockNum;
}
