
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ DEVICE_STATE_Configured ;
 int OUTPUT_BLUETOOTH ;
 int OUTPUT_NONE ;
 int OUTPUT_USB ;
 scalar_t__ USB_DeviceState ;
 scalar_t__ adafruit_ble_is_connected () ;

uint8_t auto_detect_output(void) {
    if (USB_DeviceState == DEVICE_STATE_Configured) {
        return OUTPUT_USB;
    }
    return OUTPUT_NONE;
}
