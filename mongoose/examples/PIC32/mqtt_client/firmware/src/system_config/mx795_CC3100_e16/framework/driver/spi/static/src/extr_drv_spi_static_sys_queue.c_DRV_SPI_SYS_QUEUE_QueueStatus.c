
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numEnqueuedHW; int numAllocHW; int numReserveLW; int numEnqueued; int numAlloc; int numReserved; int numEnqueueOps; int numDequeueOps; int numFreeOps; int numAllocOps; int * pNext; } ;
struct TYPE_4__ {int numEnqueuedHW; int numAllocHW; int numReserveLW; int numEnqueued; int numAlloc; int numReserved; int numEnqueueOps; int numDequeueOps; int numFreeOps; int numAllocOps; } ;
typedef TYPE_1__ DRV_SPI_SYS_QUEUE_STATUS ;
typedef int DRV_SPI_SYS_QUEUE_RESULT ;
typedef TYPE_2__ DRV_SPI_SYS_QUEUE_QUEUE_DATA ;
typedef scalar_t__ DRV_SPI_SYS_QUEUE_HANDLE ;


 int DRV_SPI_SYS_QUEUE_INVALID_PARAMETER ;
 scalar_t__ DRV_SPI_SYS_QUEUE_MAX_ERROR ;
 int DRV_SPI_SYS_QUEUE_SUCCESS ;

DRV_SPI_SYS_QUEUE_RESULT DRV_SPI_SYS_QUEUE_QueueStatus(DRV_SPI_SYS_QUEUE_HANDLE queue, DRV_SPI_SYS_QUEUE_STATUS * status)
{
    return DRV_SPI_SYS_QUEUE_INVALID_PARAMETER;


}
