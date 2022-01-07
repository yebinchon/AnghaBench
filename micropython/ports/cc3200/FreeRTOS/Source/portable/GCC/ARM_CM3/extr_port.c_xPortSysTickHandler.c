
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pdFALSE ;
 int portDISABLE_INTERRUPTS () ;
 int portENABLE_INTERRUPTS () ;
 int portNVIC_INT_CTRL_REG ;
 int portNVIC_PENDSVSET_BIT ;
 scalar_t__ xTaskIncrementTick () ;

void xPortSysTickHandler( void )
{




 portDISABLE_INTERRUPTS();
 {

  if( xTaskIncrementTick() != pdFALSE )
  {


   portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
  }
 }
 portENABLE_INTERRUPTS();
}
