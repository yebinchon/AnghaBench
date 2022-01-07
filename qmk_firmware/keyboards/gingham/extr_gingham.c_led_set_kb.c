
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ IS_LED_ON (int ,int ) ;
 int PORT_EXPANDER_ADDRESS ;
 int USB_LED_CAPS_LOCK ;
 int i2c_writeReg (int,int,int*,int,int) ;
 int led_set_user (int ) ;
 int send_data ;

void led_set_kb(uint8_t usb_led) {

    if (IS_LED_ON(usb_led, USB_LED_CAPS_LOCK)) {
        send_data = 0x18;
    } else {
        send_data = 0x10;
    }
    i2c_writeReg((PORT_EXPANDER_ADDRESS << 1), 0x09, &send_data, 1, 20);

    led_set_user(usb_led);
}
