
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
typedef int info ;
struct TYPE_8__ {int buf_id; } ;
struct TYPE_7__ {int keysize; int entrysize; } ;
typedef int LocalBufferLookupEnt ;
typedef TYPE_1__ HASHCTL ;
typedef int BufferTag ;
typedef TYPE_2__ BufferDesc ;
typedef int Block ;


 int ERRCODE_INVALID_TRANSACTION_STATE ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int FATAL ;
 TYPE_2__* GetLocalBufferDescriptor (int) ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 scalar_t__ IsParallelWorker () ;
 int LocalBufHash ;
 int * LocalBufferBlockPointers ;
 TYPE_2__* LocalBufferDescriptors ;
 int * LocalRefCount ;
 int MemSet (TYPE_1__*,int ,int) ;
 int NLocBuffer ;
 scalar_t__ calloc (int,int) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int hash_create (char*,int,TYPE_1__*,int) ;
 scalar_t__ nextFreeLocalBuf ;
 int num_temp_buffers ;

__attribute__((used)) static void
InitLocalBuffers(void)
{
 int nbufs = num_temp_buffers;
 HASHCTL info;
 int i;
 if (IsParallelWorker())
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TRANSACTION_STATE),
     errmsg("cannot access temporary tables during a parallel operation")));


 LocalBufferDescriptors = (BufferDesc *) calloc(nbufs, sizeof(BufferDesc));
 LocalBufferBlockPointers = (Block *) calloc(nbufs, sizeof(Block));
 LocalRefCount = (int32 *) calloc(nbufs, sizeof(int32));
 if (!LocalBufferDescriptors || !LocalBufferBlockPointers || !LocalRefCount)
  ereport(FATAL,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));

 nextFreeLocalBuf = 0;


 for (i = 0; i < nbufs; i++)
 {
  BufferDesc *buf = GetLocalBufferDescriptor(i);







  buf->buf_id = -i - 2;







 }


 MemSet(&info, 0, sizeof(info));
 info.keysize = sizeof(BufferTag);
 info.entrysize = sizeof(LocalBufferLookupEnt);

 LocalBufHash = hash_create("Local Buffer Lookup Table",
          nbufs,
          &info,
          HASH_ELEM | HASH_BLOBS);

 if (!LocalBufHash)
  elog(ERROR, "could not initialize local buffer hash table");


 NLocBuffer = nbufs;
}
