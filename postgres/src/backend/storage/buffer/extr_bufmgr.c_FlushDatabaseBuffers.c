
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_12__ {scalar_t__ dbNode; } ;
struct TYPE_11__ {TYPE_2__ rnode; } ;
struct TYPE_13__ {TYPE_1__ tag; } ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ BufferDesc ;


 int BM_DIRTY ;
 int BM_VALID ;
 int BufferDescriptorGetContentLock (TYPE_3__*) ;
 int CurrentResourceOwner ;
 int FlushBuffer (TYPE_3__*,int *) ;
 TYPE_3__* GetBufferDescriptor (int) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int LockBufHdr (TYPE_3__*) ;
 int NBuffers ;
 int PinBuffer_Locked (TYPE_3__*) ;
 int ReservePrivateRefCountEntry () ;
 int ResourceOwnerEnlargeBuffers (int ) ;
 int UnlockBufHdr (TYPE_3__*,int) ;
 int UnpinBuffer (TYPE_3__*,int) ;

void
FlushDatabaseBuffers(Oid dbid)
{
 int i;
 BufferDesc *bufHdr;


 ResourceOwnerEnlargeBuffers(CurrentResourceOwner);

 for (i = 0; i < NBuffers; i++)
 {
  uint32 buf_state;

  bufHdr = GetBufferDescriptor(i);





  if (bufHdr->tag.rnode.dbNode != dbid)
   continue;

  ReservePrivateRefCountEntry();

  buf_state = LockBufHdr(bufHdr);
  if (bufHdr->tag.rnode.dbNode == dbid &&
   (buf_state & (BM_VALID | BM_DIRTY)) == (BM_VALID | BM_DIRTY))
  {
   PinBuffer_Locked(bufHdr);
   LWLockAcquire(BufferDescriptorGetContentLock(bufHdr), LW_SHARED);
   FlushBuffer(bufHdr, ((void*)0));
   LWLockRelease(BufferDescriptorGetContentLock(bufHdr));
   UnpinBuffer(bufHdr, 1);
  }
  else
   UnlockBufHdr(bufHdr, buf_state);
 }
}
