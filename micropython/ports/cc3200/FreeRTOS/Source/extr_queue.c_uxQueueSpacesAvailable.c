
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_3__ {scalar_t__ uxMessagesWaiting; scalar_t__ uxLength; } ;
typedef TYPE_1__ Queue_t ;
typedef scalar_t__ QueueHandle_t ;


 int configASSERT (TYPE_1__*) ;
 int taskENTER_CRITICAL () ;
 int taskEXIT_CRITICAL () ;

UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue )
{
UBaseType_t uxReturn;
Queue_t *pxQueue;

 pxQueue = ( Queue_t * ) xQueue;
 configASSERT( pxQueue );

 taskENTER_CRITICAL();
 {
  uxReturn = pxQueue->uxLength - pxQueue->uxMessagesWaiting;
 }
 taskEXIT_CRITICAL();

 return uxReturn;
}
