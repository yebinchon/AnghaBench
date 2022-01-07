
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ firstFreeBuffer; scalar_t__ lastFreeBuffer; int buffer_strategy_lock; } ;
struct TYPE_4__ {scalar_t__ freeNext; scalar_t__ buf_id; } ;
typedef TYPE_1__ BufferDesc ;


 scalar_t__ FREENEXT_NOT_IN_LIST ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_3__* StrategyControl ;

void
StrategyFreeBuffer(BufferDesc *buf)
{
 SpinLockAcquire(&StrategyControl->buffer_strategy_lock);





 if (buf->freeNext == FREENEXT_NOT_IN_LIST)
 {
  buf->freeNext = StrategyControl->firstFreeBuffer;
  if (buf->freeNext < 0)
   StrategyControl->lastFreeBuffer = buf->buf_id;
  StrategyControl->firstFreeBuffer = buf->buf_id;
 }

 SpinLockRelease(&StrategyControl->buffer_strategy_lock);
}
