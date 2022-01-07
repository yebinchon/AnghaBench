
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int state; } ;
typedef int SpinDelayStatus ;
typedef TYPE_1__ BufferDesc ;


 int BM_LOCKED ;
 int finish_spin_delay (int *) ;
 int init_local_spin_delay (int *) ;
 int perform_spin_delay (int *) ;
 int pg_atomic_fetch_or_u32 (int *,int) ;

uint32
LockBufHdr(BufferDesc *desc)
{
 SpinDelayStatus delayStatus;
 uint32 old_buf_state;

 init_local_spin_delay(&delayStatus);

 while (1)
 {

  old_buf_state = pg_atomic_fetch_or_u32(&desc->state, BM_LOCKED);

  if (!(old_buf_state & BM_LOCKED))
   break;
  perform_spin_delay(&delayStatus);
 }
 finish_spin_delay(&delayStatus);
 return old_buf_state | BM_LOCKED;
}
