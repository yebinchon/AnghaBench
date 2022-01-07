
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {scalar_t__ current; scalar_t__ ring_size; scalar_t__* buffers; int current_was_in_ring; } ;
typedef int BufferDesc ;
typedef TYPE_1__* BufferAccessStrategy ;
typedef scalar_t__ Buffer ;


 scalar_t__ BUF_STATE_GET_REFCOUNT (int ) ;
 int BUF_STATE_GET_USAGECOUNT (int ) ;
 int * GetBufferDescriptor (scalar_t__) ;
 scalar_t__ InvalidBuffer ;
 int LockBufHdr (int *) ;
 int UnlockBufHdr (int *,int ) ;

__attribute__((used)) static BufferDesc *
GetBufferFromRing(BufferAccessStrategy strategy, uint32 *buf_state)
{
 BufferDesc *buf;
 Buffer bufnum;
 uint32 local_buf_state;



 if (++strategy->current >= strategy->ring_size)
  strategy->current = 0;






 bufnum = strategy->buffers[strategy->current];
 if (bufnum == InvalidBuffer)
 {
  strategy->current_was_in_ring = 0;
  return ((void*)0);
 }
 buf = GetBufferDescriptor(bufnum - 1);
 local_buf_state = LockBufHdr(buf);
 if (BUF_STATE_GET_REFCOUNT(local_buf_state) == 0
  && BUF_STATE_GET_USAGECOUNT(local_buf_state) <= 1)
 {
  strategy->current_was_in_ring = 1;
  *buf_state = local_buf_state;
  return buf;
 }
 UnlockBufHdr(buf, local_buf_state);





 strategy->current_was_in_ring = 0;
 return ((void*)0);
}
