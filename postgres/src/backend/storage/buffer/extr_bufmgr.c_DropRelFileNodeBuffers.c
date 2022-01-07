
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_10__ {scalar_t__ forkNum; scalar_t__ blockNum; int rnode; } ;
struct TYPE_12__ {TYPE_1__ tag; } ;
struct TYPE_11__ {scalar_t__ backend; int node; } ;
typedef TYPE_2__ RelFileNodeBackend ;
typedef scalar_t__ ForkNumber ;
typedef TYPE_3__ BufferDesc ;
typedef scalar_t__ BlockNumber ;


 int DropRelFileNodeLocalBuffers (int ,scalar_t__,scalar_t__) ;
 TYPE_3__* GetBufferDescriptor (int) ;
 int InvalidateBuffer (TYPE_3__*) ;
 int LockBufHdr (TYPE_3__*) ;
 scalar_t__ MyBackendId ;
 int NBuffers ;
 scalar_t__ RelFileNodeBackendIsTemp (TYPE_2__) ;
 scalar_t__ RelFileNodeEquals (int ,int ) ;
 int UnlockBufHdr (TYPE_3__*,int ) ;

void
DropRelFileNodeBuffers(RelFileNodeBackend rnode, ForkNumber *forkNum,
        int nforks, BlockNumber *firstDelBlock)
{
 int i;
 int j;


 if (RelFileNodeBackendIsTemp(rnode))
 {
  if (rnode.backend == MyBackendId)
  {
   for (j = 0; j < nforks; j++)
    DropRelFileNodeLocalBuffers(rnode.node, forkNum[j],
           firstDelBlock[j]);
  }
  return;
 }

 for (i = 0; i < NBuffers; i++)
 {
  BufferDesc *bufHdr = GetBufferDescriptor(i);
  uint32 buf_state;
  if (!RelFileNodeEquals(bufHdr->tag.rnode, rnode.node))
   continue;

  buf_state = LockBufHdr(bufHdr);

  for (j = 0; j < nforks; j++)
  {
   if (RelFileNodeEquals(bufHdr->tag.rnode, rnode.node) &&
    bufHdr->tag.forkNum == forkNum[j] &&
    bufHdr->tag.blockNum >= firstDelBlock[j])
   {
    InvalidateBuffer(bufHdr);
    break;
   }
  }
  if (j >= nforks)
   UnlockBufHdr(bufHdr, buf_state);
 }
}
