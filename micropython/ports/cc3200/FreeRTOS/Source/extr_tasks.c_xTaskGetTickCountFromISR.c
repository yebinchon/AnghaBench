
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBaseType_t ;
typedef int TickType_t ;


 int portASSERT_IF_INTERRUPT_PRIORITY_INVALID () ;
 int portTICK_TYPE_CLEAR_INTERRUPT_MASK_FROM_ISR (int ) ;
 int portTICK_TYPE_SET_INTERRUPT_MASK_FROM_ISR () ;
 int xTickCount ;

TickType_t xTaskGetTickCountFromISR( void )
{
TickType_t xReturn;
UBaseType_t uxSavedInterruptStatus;
 portASSERT_IF_INTERRUPT_PRIORITY_INVALID();

 uxSavedInterruptStatus = portTICK_TYPE_SET_INTERRUPT_MASK_FROM_ISR();
 {
  xReturn = xTickCount;
 }
 portTICK_TYPE_CLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );

 return xReturn;
}
