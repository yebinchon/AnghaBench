
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_IntMasterEnable () ;
 int MAP_IntVTableBaseSet (unsigned long) ;
 int PRCMCC3200MCUInit () ;
 int * g_pfnVectors ;
 int hal_TickInit () ;

__attribute__ ((section (".boot")))
void HAL_SystemInit (void) {
    MAP_IntVTableBaseSet((unsigned long)&g_pfnVectors[0]);
    hal_TickInit();

}
