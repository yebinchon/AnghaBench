
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int USB_HandleExtraDevice () ;
 scalar_t__ timer_read64 () ;

void main_subtask_usb_extra_device(void) {
    static uint64_t next_usb_checkup = 0;

    if (timer_read64() > next_usb_checkup) {
        next_usb_checkup = timer_read64() + 10;

        USB_HandleExtraDevice();
    }
}
