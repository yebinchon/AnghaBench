
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * OsiTaskHandle ;


 int ASSERT (int ) ;
 int HAL_SystemInit () ;
 int MICROPY_TASK_PRIORITY ;
 int MICROPY_TASK_STACK_LEN ;
 int TASK_MicroPython ;
 int antenna_init0 () ;
 int mpTaskStack ;
 int mpTaskTCB ;
 int osi_start () ;
 int pybwdt_init0 () ;
 int * xTaskCreateStatic (int ,char*,int ,int *,int ,int ,int *) ;

__attribute__ ((section (".boot")))
int main (void) {


    HAL_SystemInit();







    pybwdt_init0();


    OsiTaskHandle mpTaskHandle;

    mpTaskHandle = xTaskCreateStatic(TASK_MicroPython, "MicroPy",
        MICROPY_TASK_STACK_LEN, ((void*)0), MICROPY_TASK_PRIORITY, mpTaskStack, &mpTaskTCB);
    ASSERT(mpTaskHandle != ((void*)0));

    osi_start();

    for ( ; ; );
}
