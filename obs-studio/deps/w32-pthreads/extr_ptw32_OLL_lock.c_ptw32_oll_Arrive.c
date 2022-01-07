
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * nodePtr; TYPE_5__* rootPtr; } ;
struct TYPE_12__ {TYPE_3__ snziNodeOrRoot; } ;
typedef TYPE_4__ ptw32_oll_ticket_t ;
struct TYPE_9__ {scalar_t__ state; int count; } ;
struct TYPE_10__ {scalar_t__ word; TYPE_1__ internal; } ;
struct TYPE_13__ {TYPE_2__ counter; } ;
typedef TYPE_5__ ptw32_oll_snziRoot_t ;
typedef int ptw32_oll_snziNode_t ;
struct TYPE_14__ {int * leafs; TYPE_5__ proxyRoot; } ;
typedef TYPE_6__ ptw32_oll_csnzi_t ;
typedef int PTW32_INTERLOCKED_SIZEPTR ;
typedef scalar_t__ PTW32_INTERLOCKED_SIZE ;


 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_SIZE (int ,scalar_t__,scalar_t__) ;
 size_t ptw32_oll_GetLeafForThread () ;
 int ptw32_oll_ShouldArriveAtTree () ;
 scalar_t__ ptw32_oll_TreeArrive (int *) ;
 scalar_t__ ptw32_oll_snziRoot_open ;

ptw32_oll_ticket_t
ptw32_oll_Arrive(ptw32_oll_csnzi_t* csnzi)
{
  for (;;)
  {
    ptw32_oll_ticket_t ticket;
    ptw32_oll_snziRoot_t oldProxy = csnzi->proxyRoot;
    if (oldProxy.counter.internal.state != ptw32_oll_snziRoot_open)
    {
      ticket.snziNodeOrRoot.rootPtr = (ptw32_oll_snziRoot_t*)((void*)0);
      return ticket;
    }
    if (!ptw32_oll_ShouldArriveAtTree())
    {
      ptw32_oll_snziRoot_t newProxy = oldProxy;
      newProxy.counter.internal.count++;
      if (PTW32_INTERLOCKED_COMPARE_EXCHANGE_SIZE(
                (PTW32_INTERLOCKED_SIZEPTR)&csnzi->proxyRoot.counter,
                (PTW32_INTERLOCKED_SIZE)newProxy.counter.word,
                (PTW32_INTERLOCKED_SIZE)oldProxy.counter.word)
          == (PTW32_INTERLOCKED_SIZE)oldProxy.counter.word)
      {

        ticket.snziNodeOrRoot.rootPtr = &csnzi->proxyRoot;
        return ticket;
      }
    }
    else
    {
      ptw32_oll_snziNode_t* leafPtr = &csnzi->leafs[ptw32_oll_GetLeafForThread()];
      ticket.snziNodeOrRoot.nodePtr = (ptw32_oll_TreeArrive(leafPtr) ? leafPtr : (ptw32_oll_snziNode_t*)((void*)0));
      return ticket;
    }
  }
}
