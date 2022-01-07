
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {int forkNum; int rnode; int blockNum; } ;
struct TYPE_4__ {int state; TYPE_3__ tag; } ;
typedef int RelFileNode ;
typedef int LocalBufferLookupEnt ;
typedef TYPE_1__ BufferDesc ;


 int BM_TAG_VALID ;
 int BUF_FLAG_MASK ;
 int BUF_USAGECOUNT_MASK ;
 int CLEAR_BUFFERTAG (TYPE_3__) ;
 int ERROR ;
 TYPE_1__* GetLocalBufferDescriptor (int) ;
 int HASH_REMOVE ;
 int LocalBufHash ;
 scalar_t__* LocalRefCount ;
 int MyBackendId ;
 int NLocBuffer ;
 scalar_t__ RelFileNodeEquals (int ,int ) ;
 int elog (int ,char*,...) ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;
 int pg_atomic_read_u32 (int *) ;
 int pg_atomic_unlocked_write_u32 (int *,int) ;
 int relpathbackend (int ,int ,int ) ;

void
DropRelFileNodeAllLocalBuffers(RelFileNode rnode)
{
 int i;

 for (i = 0; i < NLocBuffer; i++)
 {
  BufferDesc *bufHdr = GetLocalBufferDescriptor(i);
  LocalBufferLookupEnt *hresult;
  uint32 buf_state;

  buf_state = pg_atomic_read_u32(&bufHdr->state);

  if ((buf_state & BM_TAG_VALID) &&
   RelFileNodeEquals(bufHdr->tag.rnode, rnode))
  {
   if (LocalRefCount[i] != 0)
    elog(ERROR, "block %u of %s is still referenced (local %u)",
      bufHdr->tag.blockNum,
      relpathbackend(bufHdr->tag.rnode, MyBackendId,
         bufHdr->tag.forkNum),
      LocalRefCount[i]);

   hresult = (LocalBufferLookupEnt *)
    hash_search(LocalBufHash, (void *) &bufHdr->tag,
       HASH_REMOVE, ((void*)0));
   if (!hresult)
    elog(ERROR, "local buffer hash table corrupted");

   CLEAR_BUFFERTAG(bufHdr->tag);
   buf_state &= ~BUF_FLAG_MASK;
   buf_state &= ~BUF_USAGECOUNT_MASK;
   pg_atomic_unlocked_write_u32(&bufHdr->state, buf_state);
  }
 }
}
