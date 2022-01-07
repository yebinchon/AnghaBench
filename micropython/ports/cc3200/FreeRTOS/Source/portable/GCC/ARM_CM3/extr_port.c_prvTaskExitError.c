
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int configASSERT (int) ;
 int portDISABLE_INTERRUPTS () ;
 unsigned long uxCriticalNesting ;

__attribute__((used)) static void prvTaskExitError( void )
{






 configASSERT( uxCriticalNesting == ~0UL );
 portDISABLE_INTERRUPTS();
 for( ;; );
}
