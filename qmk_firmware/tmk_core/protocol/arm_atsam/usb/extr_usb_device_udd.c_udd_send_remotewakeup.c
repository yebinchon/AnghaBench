
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int UDD_STATE_IDLE ;
 int udd_sleep_mode (int ) ;
 int udd_wait_clock_ready () ;
 int usb_device ;
 int usb_device_send_remote_wake_up (int *) ;
 int usb_get_state_machine_status (int *) ;

void udd_send_remotewakeup(void) {
    uint32_t try
        = 5;
    udd_wait_clock_ready();
    udd_sleep_mode(UDD_STATE_IDLE);
    while (2 != usb_get_state_machine_status(&usb_device) && try --) {
        usb_device_send_remote_wake_up(&usb_device);
    }
}
