
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ptw32_srwl_rwlock_t ;
struct TYPE_6__ {TYPE_4__* departFromPtr; int ticket; } ;
typedef TYPE_2__ ptw32_srwl_local_t ;
struct TYPE_7__ {TYPE_1__* qNextPtr; int csnzi; } ;
struct TYPE_5__ {int spin; } ;


 int PTW32_FALSE ;
 scalar_t__ ptw32_oll_Depart (int ,int ) ;
 int ptw32_srwl_FreeReaderNode (TYPE_4__*) ;

void
ptw32_srwl_ReaderUnlock(ptw32_srwl_rwlock_t* lockPtr, ptw32_srwl_local_t* localPtr)
{
  if (ptw32_oll_Depart(localPtr->departFromPtr->csnzi, localPtr->ticket))
  {
    return;
  }

  localPtr->departFromPtr->qNextPtr->spin = PTW32_FALSE;
  localPtr->departFromPtr->qNextPtr = ((void*)0);
  ptw32_srwl_FreeReaderNode(localPtr->departFromPtr);
}
