
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bgwprocno; int buffer_strategy_lock; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* StrategyControl ;

void
StrategyNotifyBgWriter(int bgwprocno)
{





 SpinLockAcquire(&StrategyControl->buffer_strategy_lock);
 StrategyControl->bgwprocno = bgwprocno;
 SpinLockRelease(&StrategyControl->buffer_strategy_lock);
}
