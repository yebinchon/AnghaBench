
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usbevent_t ;
typedef int USBDriver ;
struct TYPE_6__ {TYPE_2__* array; } ;
struct TYPE_4__ {int int_in; int bulk_out; int bulk_in; } ;
struct TYPE_5__ {int driver; int int_ep_config; TYPE_1__ config; int out_ep_config; int in_ep_config; } ;


 int KEYBOARD_IN_EPNUM ;
 int MOUSE_IN_EPNUM ;
 int NUM_USB_DRIVERS ;
 int SHARED_IN_EPNUM ;







 int chSysLockFromISR () ;
 int chSysUnlockFromISR () ;
 TYPE_3__ drivers ;
 int host_keyboard_leds () ;
 int kbd_ep_config ;
 int led_set (int ) ;
 int mouse_ep_config ;
 int osalSysLockFromISR () ;
 int osalSysUnlockFromISR () ;
 int qmkusbConfigureHookI (int *) ;
 int qmkusbSuspendHookI (int *) ;
 int qmkusbWakeupHookI (int *) ;
 int shared_ep_config ;
 int sleep_led_disable () ;
 int sleep_led_enable () ;
 int suspend_wakeup_init () ;
 int usbInitEndpointI (int *,int ,int *) ;

__attribute__((used)) static void usb_event_cb(USBDriver *usbp, usbevent_t event) {
    switch (event) {
        case 134:
            return;

        case 133:
            osalSysLockFromISR();


            usbInitEndpointI(usbp, KEYBOARD_IN_EPNUM, &kbd_ep_config);







            for (int i = 0; i < NUM_USB_DRIVERS; i++) {
                usbInitEndpointI(usbp, drivers.array[i].config.bulk_in, &drivers.array[i].in_ep_config);
                usbInitEndpointI(usbp, drivers.array[i].config.bulk_out, &drivers.array[i].out_ep_config);
                if (drivers.array[i].config.int_in) {
                    usbInitEndpointI(usbp, drivers.array[i].config.int_in, &drivers.array[i].int_ep_config);
                }
                qmkusbConfigureHookI(&drivers.array[i].driver);
            }
            osalSysUnlockFromISR();
            return;
        case 130:




        case 129:

        case 132:
            for (int i = 0; i < NUM_USB_DRIVERS; i++) {
                chSysLockFromISR();

                qmkusbSuspendHookI(&drivers.array[i].driver);
                chSysUnlockFromISR();
            }
            return;

        case 128:

            for (int i = 0; i < NUM_USB_DRIVERS; i++) {
                chSysLockFromISR();

                qmkusbWakeupHookI(&drivers.array[i].driver);
                chSysUnlockFromISR();
            }
            suspend_wakeup_init();





            return;

        case 131:
            return;
    }
}
