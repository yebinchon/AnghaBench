
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int configASSERT (int) ;
 unsigned long uxCriticalNesting ;

void vPortEndScheduler( void )
{


 configASSERT( uxCriticalNesting == 1000UL );
}
