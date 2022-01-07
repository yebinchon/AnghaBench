
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vTaskStartScheduler () ;

__attribute__ ((section (".boot")))
void osi_start()
{
    vTaskStartScheduler();
}
