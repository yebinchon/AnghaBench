
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ blockNum; scalar_t__ forkNum; int rnode; } ;
struct TYPE_11__ {TYPE_1__ tag; } ;
struct TYPE_10__ {int rd_node; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ ForkNumber ;
typedef TYPE_3__ BufferDesc ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int ) ;
 scalar_t__ BufferIsLocal (int) ;
 int BufferIsPinned (int) ;
 scalar_t__ BufferIsValid (int) ;
 int CurrentResourceOwner ;
 TYPE_3__* GetBufferDescriptor (int) ;
 TYPE_3__* GetLocalBufferDescriptor (int) ;
 int * LocalRefCount ;
 scalar_t__ MAIN_FORKNUM ;
 int ReadBuffer (TYPE_2__*,scalar_t__) ;
 scalar_t__ RelFileNodeEquals (int ,int ) ;
 int ResourceOwnerForgetBuffer (int ,int) ;
 int UnpinBuffer (TYPE_3__*,int) ;

Buffer
ReleaseAndReadBuffer(Buffer buffer,
      Relation relation,
      BlockNumber blockNum)
{
 ForkNumber forkNum = MAIN_FORKNUM;
 BufferDesc *bufHdr;

 if (BufferIsValid(buffer))
 {
  Assert(BufferIsPinned(buffer));
  if (BufferIsLocal(buffer))
  {
   bufHdr = GetLocalBufferDescriptor(-buffer - 1);
   if (bufHdr->tag.blockNum == blockNum &&
    RelFileNodeEquals(bufHdr->tag.rnode, relation->rd_node) &&
    bufHdr->tag.forkNum == forkNum)
    return buffer;
   ResourceOwnerForgetBuffer(CurrentResourceOwner, buffer);
   LocalRefCount[-buffer - 1]--;
  }
  else
  {
   bufHdr = GetBufferDescriptor(buffer - 1);

   if (bufHdr->tag.blockNum == blockNum &&
    RelFileNodeEquals(bufHdr->tag.rnode, relation->rd_node) &&
    bufHdr->tag.forkNum == forkNum)
    return buffer;
   UnpinBuffer(bufHdr, 1);
  }
 }

 return ReadBuffer(relation, blockNum);
}
