
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int configASSERT (scalar_t__) ;
 int portENABLE_INTERRUPTS () ;
 scalar_t__ uxCriticalNesting ;

void vPortExitCritical( void )
{
 configASSERT( uxCriticalNesting );
 uxCriticalNesting--;
 if( uxCriticalNesting == 0 )
 {
  portENABLE_INTERRUPTS();
 }
}
