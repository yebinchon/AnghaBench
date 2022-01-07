
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UDD_STATE_SUSPEND ;
 int udd_sleep_mode (int ) ;
 int usb_device ;
 int usb_device_detach (int *) ;

void udd_detach(void) {
    usb_device_detach(&usb_device);
    udd_sleep_mode(UDD_STATE_SUSPEND);
}
