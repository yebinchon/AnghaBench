
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int int32 ;
struct TYPE_5__ {int blockNum; int forkNum; int rnode; } ;
struct TYPE_6__ {TYPE_1__ tag; int state; } ;
typedef TYPE_2__ BufferDesc ;
typedef int Buffer ;
typedef int BackendId ;


 int Assert (int ) ;
 int BUF_FLAG_MASK ;
 int BUF_STATE_GET_REFCOUNT (int) ;
 scalar_t__ BufferIsLocal (int) ;
 int BufferIsValid (int) ;
 TYPE_2__* GetBufferDescriptor (int) ;
 TYPE_2__* GetLocalBufferDescriptor (int) ;
 int GetPrivateRefCount (int) ;
 int InvalidBackendId ;
 int * LocalRefCount ;
 int MyBackendId ;
 int WARNING ;
 int elog (int ,char*,int,char*,int ,int,int ,int ) ;
 int pfree (char*) ;
 int pg_atomic_read_u32 (int *) ;
 char* relpathbackend (int ,int ,int ) ;

void
PrintBufferLeakWarning(Buffer buffer)
{
 BufferDesc *buf;
 int32 loccount;
 char *path;
 BackendId backend;
 uint32 buf_state;

 Assert(BufferIsValid(buffer));
 if (BufferIsLocal(buffer))
 {
  buf = GetLocalBufferDescriptor(-buffer - 1);
  loccount = LocalRefCount[-buffer - 1];
  backend = MyBackendId;
 }
 else
 {
  buf = GetBufferDescriptor(buffer - 1);
  loccount = GetPrivateRefCount(buffer);
  backend = InvalidBackendId;
 }


 path = relpathbackend(buf->tag.rnode, backend, buf->tag.forkNum);
 buf_state = pg_atomic_read_u32(&buf->state);
 elog(WARNING,
   "buffer refcount leak: [%03d] "
   "(rel=%s, blockNum=%u, flags=0x%x, refcount=%u %d)",
   buffer, path,
   buf->tag.blockNum, buf_state & BUF_FLAG_MASK,
   BUF_STATE_GET_REFCOUNT(buf_state), loccount);
 pfree(path);
}
