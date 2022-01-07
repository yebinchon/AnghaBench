
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t current; int * buffers; } ;
typedef int BufferDesc ;
typedef TYPE_1__* BufferAccessStrategy ;


 int BufferDescriptorGetBuffer (int *) ;

__attribute__((used)) static void
AddBufferToRing(BufferAccessStrategy strategy, BufferDesc *buf)
{
 strategy->buffers[strategy->current] = BufferDescriptorGetBuffer(buf);
}
