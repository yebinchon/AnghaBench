
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GPIOC ;
 int USB_LED_CAPS_LOCK ;
 int palClearPad (int ,int) ;
 int palSetPad (int ,int) ;

void led_set(uint8_t usb_led){
  if (usb_led & (1<<USB_LED_CAPS_LOCK)) {




  } else {




  }
}
