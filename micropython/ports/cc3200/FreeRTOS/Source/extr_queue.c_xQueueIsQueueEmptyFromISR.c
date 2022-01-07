
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_2__ {scalar_t__ uxMessagesWaiting; } ;
typedef TYPE_1__ Queue_t ;
typedef scalar_t__ QueueHandle_t ;
typedef int BaseType_t ;


 int configASSERT (scalar_t__ const) ;
 int pdFALSE ;
 int pdTRUE ;

BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue )
{
BaseType_t xReturn;

 configASSERT( xQueue );
 if( ( ( Queue_t * ) xQueue )->uxMessagesWaiting == ( UBaseType_t ) 0 )
 {
  xReturn = pdTRUE;
 }
 else
 {
  xReturn = pdFALSE;
 }

 return xReturn;
}
