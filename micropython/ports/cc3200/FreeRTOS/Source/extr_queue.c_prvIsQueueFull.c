
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ uxMessagesWaiting; scalar_t__ uxLength; } ;
typedef TYPE_1__ Queue_t ;
typedef int BaseType_t ;


 int pdFALSE ;
 int pdTRUE ;
 int taskENTER_CRITICAL () ;
 int taskEXIT_CRITICAL () ;

__attribute__((used)) static BaseType_t prvIsQueueFull( const Queue_t *pxQueue )
{
BaseType_t xReturn;

 taskENTER_CRITICAL();
 {
  if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
  {
   xReturn = pdTRUE;
  }
  else
  {
   xReturn = pdFALSE;
  }
 }
 taskEXIT_CRITICAL();

 return xReturn;
}
