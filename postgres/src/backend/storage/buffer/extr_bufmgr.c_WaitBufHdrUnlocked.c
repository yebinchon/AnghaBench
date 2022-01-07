
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
 int pg_atomic_read_u32 (int *) ;

__attribute__((used)) static uint32
WaitBufHdrUnlocked(BufferDesc *buf)
{
 SpinDelayStatus delayStatus;
 uint32 buf_state;

 init_local_spin_delay(&delayStatus);

 buf_state = pg_atomic_read_u32(&buf->state);

 while (buf_state & BM_LOCKED)
 {
  perform_spin_delay(&delayStatus);
  buf_state = pg_atomic_read_u32(&buf->state);
 }

 finish_spin_delay(&delayStatus);

 return buf_state;
}
