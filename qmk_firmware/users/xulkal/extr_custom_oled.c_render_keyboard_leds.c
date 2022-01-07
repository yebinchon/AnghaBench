
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ IS_LED_ON (int ,int ) ;
 int PSTR (char*) ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int host_keyboard_leds () ;
 int oled_write_P (int ,int) ;

__attribute__((used)) static void render_keyboard_leds(void)
{

    uint8_t led_state = host_keyboard_leds();





    oled_write_P(IS_LED_ON(led_state, USB_LED_NUM_LOCK) ? PSTR("NUM  ") : PSTR("     "), 0);
    oled_write_P(IS_LED_ON(led_state, USB_LED_CAPS_LOCK) ? PSTR("CAPS ") : PSTR("     "), 0);
    oled_write_P(IS_LED_ON(led_state, USB_LED_SCROLL_LOCK) ? PSTR("SCRL") : PSTR("    "), 0);

}
