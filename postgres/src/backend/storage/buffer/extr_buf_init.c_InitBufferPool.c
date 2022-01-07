
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buf_id; int freeNext; scalar_t__ wait_backend_pid; int state; int tag; } ;
typedef int Size ;
typedef int LWLockMinimallyPadded ;
typedef int CkptSortItem ;
typedef int BufferDescPadded ;
typedef TYPE_1__ BufferDesc ;


 int Assert (int) ;
 scalar_t__ BLCKSZ ;
 int BackendWritebackContext ;
 char* BufferBlocks ;
 int BufferDescriptorGetContentLock (TYPE_1__*) ;
 int BufferDescriptorGetIOLock (TYPE_1__*) ;
 int * BufferDescriptors ;
 int * BufferIOLWLockArray ;
 int CLEAR_BUFFERTAG (int ) ;
 int * CkptBufferIds ;
 int FREENEXT_END_OF_LIST ;
 TYPE_1__* GetBufferDescriptor (int) ;
 int LWLockInitialize (int ,int ) ;
 int LWLockRegisterTranche (int ,char*) ;
 int LWTRANCHE_BUFFER_CONTENT ;
 int LWTRANCHE_BUFFER_IO_IN_PROGRESS ;
 int NBuffers ;
 scalar_t__ ShmemInitStruct (char*,int,int*) ;
 int StrategyInitialize (int) ;
 int WritebackContextInit (int *,int *) ;
 int backend_flush_after ;
 int pg_atomic_init_u32 (int *,int ) ;

void
InitBufferPool(void)
{
 bool foundBufs,
    foundDescs,
    foundIOLocks,
    foundBufCkpt;


 BufferDescriptors = (BufferDescPadded *)
  ShmemInitStruct("Buffer Descriptors",
      NBuffers * sizeof(BufferDescPadded),
      &foundDescs);

 BufferBlocks = (char *)
  ShmemInitStruct("Buffer Blocks",
      NBuffers * (Size) BLCKSZ, &foundBufs);


 BufferIOLWLockArray = (LWLockMinimallyPadded *)
  ShmemInitStruct("Buffer IO Locks",
      NBuffers * (Size) sizeof(LWLockMinimallyPadded),
      &foundIOLocks);

 LWLockRegisterTranche(LWTRANCHE_BUFFER_IO_IN_PROGRESS, "buffer_io");
 LWLockRegisterTranche(LWTRANCHE_BUFFER_CONTENT, "buffer_content");
 CkptBufferIds = (CkptSortItem *)
  ShmemInitStruct("Checkpoint BufferIds",
      NBuffers * sizeof(CkptSortItem), &foundBufCkpt);

 if (foundDescs || foundBufs || foundIOLocks || foundBufCkpt)
 {

  Assert(foundDescs && foundBufs && foundIOLocks && foundBufCkpt);

 }
 else
 {
  int i;




  for (i = 0; i < NBuffers; i++)
  {
   BufferDesc *buf = GetBufferDescriptor(i);

   CLEAR_BUFFERTAG(buf->tag);

   pg_atomic_init_u32(&buf->state, 0);
   buf->wait_backend_pid = 0;

   buf->buf_id = i;





   buf->freeNext = i + 1;

   LWLockInitialize(BufferDescriptorGetContentLock(buf),
        LWTRANCHE_BUFFER_CONTENT);

   LWLockInitialize(BufferDescriptorGetIOLock(buf),
        LWTRANCHE_BUFFER_IO_IN_PROGRESS);
  }


  GetBufferDescriptor(NBuffers - 1)->freeNext = FREENEXT_END_OF_LIST;
 }


 StrategyInitialize(!foundDescs);


 WritebackContextInit(&BackendWritebackContext,
       &backend_flush_after);
}
