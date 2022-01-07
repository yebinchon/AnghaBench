
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int blockNum; } ;
struct TYPE_6__ {TYPE_1__ tag; } ;
typedef TYPE_2__ BufferDesc ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int ) ;
 scalar_t__ BufferIsLocal (int) ;
 int BufferIsPinned (int) ;
 TYPE_2__* GetBufferDescriptor (int) ;
 TYPE_2__* GetLocalBufferDescriptor (int) ;

BlockNumber
BufferGetBlockNumber(Buffer buffer)
{
 BufferDesc *bufHdr;

 Assert(BufferIsPinned(buffer));

 if (BufferIsLocal(buffer))
  bufHdr = GetLocalBufferDescriptor(-buffer - 1);
 else
  bufHdr = GetBufferDescriptor(buffer - 1);


 return bufHdr->tag.blockNum;
}
