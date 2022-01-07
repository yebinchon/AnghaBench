
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uxEventBits; } ;
typedef TYPE_1__ EventGroup_t ;
typedef int EventGroupHandle_t ;
typedef int EventBits_t ;


 int configASSERT (int) ;
 int const eventEVENT_BITS_CONTROL_BYTES ;
 int taskENTER_CRITICAL () ;
 int taskEXIT_CRITICAL () ;
 int traceEVENT_GROUP_CLEAR_BITS (int,int const) ;

EventBits_t xEventGroupClearBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear )
{
EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
EventBits_t uxReturn;



 configASSERT( xEventGroup );
 configASSERT( ( uxBitsToClear & eventEVENT_BITS_CONTROL_BYTES ) == 0 );

 taskENTER_CRITICAL();
 {
  traceEVENT_GROUP_CLEAR_BITS( xEventGroup, uxBitsToClear );



  uxReturn = pxEventBits->uxEventBits;


  pxEventBits->uxEventBits &= ~uxBitsToClear;
 }
 taskEXIT_CRITICAL();

 return uxReturn;
}
