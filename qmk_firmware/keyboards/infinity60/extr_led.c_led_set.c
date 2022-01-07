
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int msg_t ;


 int TOGGLE_CAPS_LOCK ;
 int TOGGLE_NUM_LOCK ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int chMBPostI (int *,int) ;
 int chSysUnconditionalLock () ;
 int chSysUnconditionalUnlock () ;
 int led_mailbox ;

void led_set(uint8_t usb_led) {
    msg_t msg;

    if (usb_led & (1<<USB_LED_NUM_LOCK)) {
        chSysUnconditionalLock();
        msg=(1 << 8) | TOGGLE_NUM_LOCK;
        chMBPostI(&led_mailbox, msg);
        chSysUnconditionalUnlock();
    } else {
        chSysUnconditionalLock();
        msg=(0 << 8) | TOGGLE_NUM_LOCK;
        chMBPostI(&led_mailbox, msg);
        chSysUnconditionalUnlock();
    }
    if (usb_led & (1<<USB_LED_CAPS_LOCK)) {
        chSysUnconditionalLock();
        msg=(1 << 8) | TOGGLE_CAPS_LOCK;
        chMBPostI(&led_mailbox, msg);
        chSysUnconditionalUnlock();
    } else {
        chSysUnconditionalLock();
        msg=(0 << 8) | TOGGLE_CAPS_LOCK;
        chMBPostI(&led_mailbox, msg);
        chSysUnconditionalUnlock();
    }
}
