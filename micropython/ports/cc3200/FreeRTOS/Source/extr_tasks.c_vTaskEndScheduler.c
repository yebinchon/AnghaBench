
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pdFALSE ;
 int portDISABLE_INTERRUPTS () ;
 int vPortEndScheduler () ;
 int xSchedulerRunning ;

void vTaskEndScheduler( void )
{



 portDISABLE_INTERRUPTS();
 xSchedulerRunning = pdFALSE;
 vPortEndScheduler();
}
