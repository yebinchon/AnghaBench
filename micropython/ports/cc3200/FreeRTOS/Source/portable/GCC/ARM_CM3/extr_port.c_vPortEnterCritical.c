
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int configASSERT (int) ;
 int portDISABLE_INTERRUPTS () ;
 int portNVIC_INT_CTRL_REG ;
 int portVECTACTIVE_MASK ;
 int uxCriticalNesting ;

void vPortEnterCritical( void )
{
 portDISABLE_INTERRUPTS();
 uxCriticalNesting++;






 if( uxCriticalNesting == 1 )
 {
  configASSERT( ( portNVIC_INT_CTRL_REG & portVECTACTIVE_MASK ) == 0 );
 }
}
