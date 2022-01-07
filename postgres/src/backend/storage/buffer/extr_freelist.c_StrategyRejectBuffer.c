
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ btype; scalar_t__* buffers; size_t current; int current_was_in_ring; } ;
typedef int BufferDesc ;
typedef TYPE_1__* BufferAccessStrategy ;


 scalar_t__ BAS_BULKREAD ;
 scalar_t__ BufferDescriptorGetBuffer (int *) ;
 scalar_t__ InvalidBuffer ;

bool
StrategyRejectBuffer(BufferAccessStrategy strategy, BufferDesc *buf)
{

 if (strategy->btype != BAS_BULKREAD)
  return 0;


 if (!strategy->current_was_in_ring ||
  strategy->buffers[strategy->current] != BufferDescriptorGetBuffer(buf))
  return 0;





 strategy->buffers[strategy->current] = InvalidBuffer;

 return 1;
}
