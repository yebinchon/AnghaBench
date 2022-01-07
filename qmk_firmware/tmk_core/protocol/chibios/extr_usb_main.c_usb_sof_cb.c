
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int USBDriver ;
struct TYPE_4__ {TYPE_1__* array; } ;
struct TYPE_3__ {int driver; } ;


 int NUM_USB_DRIVERS ;
 TYPE_2__ drivers ;
 int kbd_sof_cb (int *) ;
 int osalSysLockFromISR () ;
 int osalSysUnlockFromISR () ;
 int qmkusbSOFHookI (int *) ;

__attribute__((used)) static void usb_sof_cb(USBDriver *usbp) {
    kbd_sof_cb(usbp);
    osalSysLockFromISR();
    for (int i = 0; i < NUM_USB_DRIVERS; i++) {
        qmkusbSOFHookI(&drivers.array[i].driver);
    }
    osalSysUnlockFromISR();
}
