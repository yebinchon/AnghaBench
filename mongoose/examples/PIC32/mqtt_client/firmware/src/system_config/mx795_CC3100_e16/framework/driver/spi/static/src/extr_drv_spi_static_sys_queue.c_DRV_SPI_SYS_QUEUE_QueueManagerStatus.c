
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numQueuesHW; int numQueues; int outOfMemoryErrors; int reserveElementsLW; int freeElementsLW; int numFreeElements; int numReserveElements; int numQueueDestroyOps; int numQueueCreateOps; int numFreeOps; int numAllocOps; } ;
struct TYPE_4__ {int numQueuesHW; int numQueues; int outOfMemoryErrors; int reserveElementsLW; int freeElementsLW; int numFreeElements; int numReserveElements; int numQueueDestroyOps; int numQueueCreateOps; int numFreeOps; int numAllocOps; } ;
typedef int DRV_SPI_SYS_QUEUE_RESULT ;
typedef TYPE_1__ DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA ;
typedef TYPE_2__ DRV_SPI_SYS_QUEUE_MANAGER_STATUS ;
typedef scalar_t__ DRV_SPI_SYS_QUEUE_MANAGER_HANDLE ;


 int DRV_SPI_SYS_QUEUE_INVALID_PARAMETER ;
 scalar_t__ DRV_SPI_SYS_QUEUE_MAX_ERROR ;
 int DRV_SPI_SYS_QUEUE_SUCCESS ;

DRV_SPI_SYS_QUEUE_RESULT DRV_SPI_SYS_QUEUE_QueueManagerStatus(DRV_SPI_SYS_QUEUE_MANAGER_HANDLE queueManager, DRV_SPI_SYS_QUEUE_MANAGER_STATUS * status)
{
    return DRV_SPI_SYS_QUEUE_INVALID_PARAMETER;

}
