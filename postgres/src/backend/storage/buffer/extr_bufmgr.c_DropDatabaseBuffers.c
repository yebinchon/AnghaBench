
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {scalar_t__ dbNode; } ;
struct TYPE_9__ {TYPE_1__ rnode; } ;
struct TYPE_10__ {TYPE_2__ tag; } ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ BufferDesc ;


 TYPE_3__* GetBufferDescriptor (int) ;
 int InvalidateBuffer (TYPE_3__*) ;
 int LockBufHdr (TYPE_3__*) ;
 int NBuffers ;
 int UnlockBufHdr (TYPE_3__*,int ) ;

void
DropDatabaseBuffers(Oid dbid)
{
 int i;






 for (i = 0; i < NBuffers; i++)
 {
  BufferDesc *bufHdr = GetBufferDescriptor(i);
  uint32 buf_state;





  if (bufHdr->tag.rnode.dbNode != dbid)
   continue;

  buf_state = LockBufHdr(bufHdr);
  if (bufHdr->tag.rnode.dbNode == dbid)
   InvalidateBuffer(bufHdr);
  else
   UnlockBufHdr(bufHdr, buf_state);
 }
}
