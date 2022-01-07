
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {int local_blks_dirtied; } ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ BufferDesc ;
typedef int Buffer ;


 int Assert (int) ;
 int BM_DIRTY ;
 int BufferIsLocal (int) ;
 TYPE_1__* GetLocalBufferDescriptor (int) ;
 scalar_t__* LocalRefCount ;
 int fprintf (int ,char*,int) ;
 TYPE_2__ pgBufferUsage ;
 int pg_atomic_read_u32 (int *) ;
 int pg_atomic_unlocked_write_u32 (int *,int) ;
 int stderr ;

void
MarkLocalBufferDirty(Buffer buffer)
{
 int bufid;
 BufferDesc *bufHdr;
 uint32 buf_state;

 Assert(BufferIsLocal(buffer));





 bufid = -(buffer + 1);

 Assert(LocalRefCount[bufid] > 0);

 bufHdr = GetLocalBufferDescriptor(bufid);

 buf_state = pg_atomic_read_u32(&bufHdr->state);

 if (!(buf_state & BM_DIRTY))
  pgBufferUsage.local_blks_dirtied++;

 buf_state |= BM_DIRTY;

 pg_atomic_unlocked_write_u32(&bufHdr->state, buf_state);
}
