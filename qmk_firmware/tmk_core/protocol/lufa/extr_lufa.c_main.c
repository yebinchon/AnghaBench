
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDC_Device_USBTask (int *) ;
 scalar_t__ DEVICE_STATE_Configured ;
 scalar_t__ DEVICE_STATE_Suspended ;
 int MIDI_Device_USBTask (int *) ;
 scalar_t__ USB_DeviceState ;
 scalar_t__ USB_Device_RemoteWakeupEnabled ;
 int USB_Device_SendRemoteWakeup () ;
 int USB_MIDI_Interface ;
 int USB_USBTask () ;
 int adafruit_ble_task () ;
 int cdc_device ;
 int host_set_driver (int *) ;
 int keyboard_init () ;
 int keyboard_setup () ;
 int keyboard_task () ;
 int lufa_driver ;
 int print (char*) ;
 int raw_hid_task () ;
 int rgblight_task () ;
 int sei () ;
 int serial_init () ;
 int setup_mcu () ;
 int setup_midi () ;
 int setup_usb () ;
 int sleep_led_init () ;
 int suspend_power_down () ;
 scalar_t__ suspend_wakeup_condition () ;
 int virtser_init () ;
 int virtser_task () ;

int main(void) {




    setup_mcu();
    keyboard_setup();
    setup_usb();
    sei();
    USB_USBTask();


    keyboard_init();
    host_set_driver(&lufa_driver);
    print("Keyboard start.\n");
    while (1) {

        while (USB_DeviceState == DEVICE_STATE_Suspended) {
            print("[s]");
            suspend_power_down();
            if (USB_Device_RemoteWakeupEnabled && suspend_wakeup_condition()) {
                USB_Device_SendRemoteWakeup();
            }
        }


        keyboard_task();
        USB_USBTask();

    }
}
