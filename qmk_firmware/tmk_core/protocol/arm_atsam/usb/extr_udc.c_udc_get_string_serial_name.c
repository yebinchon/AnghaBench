
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int BOOTLOADER_SERIAL_MAX_SIZE ;
 scalar_t__ USB_DEVICE_SERIAL_NAME ;
 int USB_DEVICE_SERIAL_NAME_SIZE ;
 int _srom ;
 int const* bootloader_serial_number ;
 int usb_device_serial_name_size ;

__attribute__((used)) static const uint8_t *udc_get_string_serial_name(void) {
    usb_device_serial_name_size = USB_DEVICE_SERIAL_NAME_SIZE;




    return 0;

}
