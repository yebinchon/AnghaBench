
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BaseType_t ;


 int mp_main_task_handle ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdTRUE ;
 int portYIELD_FROM_ISR () ;
 int vTaskNotifyGiveFromISR (int ,scalar_t__*) ;

void mp_hal_wake_main_task_from_isr(void) {
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    vTaskNotifyGiveFromISR(mp_main_task_handle, &xHigherPriorityTaskWoken);
    if (xHigherPriorityTaskWoken == pdTRUE) {
        portYIELD_FROM_ISR();
    }
}
