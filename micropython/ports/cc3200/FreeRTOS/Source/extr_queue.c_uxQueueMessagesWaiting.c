
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UBaseType_t ;
struct TYPE_2__ {int uxMessagesWaiting; } ;
typedef TYPE_1__ Queue_t ;
typedef scalar_t__ QueueHandle_t ;


 int configASSERT (scalar_t__ const) ;
 int taskENTER_CRITICAL () ;
 int taskEXIT_CRITICAL () ;

UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue )
{
UBaseType_t uxReturn;

 configASSERT( xQueue );

 taskENTER_CRITICAL();
 {
  uxReturn = ( ( Queue_t * ) xQueue )->uxMessagesWaiting;
 }
 taskEXIT_CRITICAL();

 return uxReturn;
}
