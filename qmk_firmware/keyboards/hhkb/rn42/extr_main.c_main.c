
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ DEVICE_STATE_Configured ;
 scalar_t__ DEVICE_STATE_Suspended ;
 int SetupHardware () ;
 scalar_t__ USB_DeviceState ;
 scalar_t__ USB_Device_RemoteWakeupEnabled ;
 int USB_Device_SendRemoteWakeup () ;
 int USB_USBTask () ;
 int keyboard_init () ;
 int keyboard_task () ;
 int matrix_power_down () ;
 int print (char*) ;
 int rn42_init () ;
 scalar_t__ rn42_rts () ;
 int rn42_task () ;
 int rn42_task_init () ;
 int sei () ;
 int sleep_led_init () ;
 int suspend_power_down () ;
 scalar_t__ suspend_wakeup_condition () ;
 int wait_ms (int) ;

int main(void)
{
    SetupHardware();
    sei();


    uint8_t timeout = 255;
    while (timeout-- && USB_DeviceState != DEVICE_STATE_Configured) {
        wait_ms(4);



        USB_USBTask();

    }
    print("\nUSB init\n");

    rn42_init();
    rn42_task_init();
    print("RN-42 init\n");


    keyboard_init();





    print("Keyboard start\n");
    while (1) {
        while (rn42_rts() &&
                USB_DeviceState == DEVICE_STATE_Suspended) {
            print("[s]");
            matrix_power_down();
            suspend_power_down();
            suspend_power_down();
            suspend_power_down();
            suspend_power_down();
            suspend_power_down();
            suspend_power_down();
            suspend_power_down();
            if (USB_Device_RemoteWakeupEnabled && suspend_wakeup_condition()) {
                    USB_Device_SendRemoteWakeup();
            }
        }

        keyboard_task();


        USB_USBTask();


        rn42_task();
    }
}
