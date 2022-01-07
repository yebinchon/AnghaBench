
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_6__ {scalar_t__ b; scalar_t__ g; scalar_t__ r; } ;
struct TYPE_5__ {scalar_t__ scan; } ;
struct TYPE_4__ {scalar_t__ enable; } ;


 size_t ISSI3733_LED_COUNT ;
 int USB_LED_CAPS_LOCK ;
 scalar_t__ USB_LED_CAPS_LOCK_SCANCODE ;
 int USB_LED_COMPOSE ;
 scalar_t__ USB_LED_COMPOSE_SCANCODE ;
 int USB_LED_KANA ;
 scalar_t__ USB_LED_KANA_SCANCODE ;
 int USB_LED_NUM_LOCK ;
 scalar_t__ USB_LED_NUM_LOCK_SCANCODE ;
 int USB_LED_SCROLL_LOCK ;
 scalar_t__ USB_LED_SCROLL_LOCK_SCANCODE ;
 size_t keyboard_leds () ;
 TYPE_3__* led_buffer ;
 TYPE_2__* led_map ;
 TYPE_1__ rgb_matrix_config ;

void led_matrix_indicators(void) {
    uint8_t kbled = keyboard_leds();
    if (kbled && rgb_matrix_config.enable) {
        for (uint8_t i = 0; i < ISSI3733_LED_COUNT; i++) {
            if (

                (led_map[i].scan == USB_LED_NUM_LOCK_SCANCODE && (kbled & (1 << USB_LED_NUM_LOCK))) ||


                (led_map[i].scan == USB_LED_CAPS_LOCK_SCANCODE && (kbled & (1 << USB_LED_CAPS_LOCK))) ||


                (led_map[i].scan == USB_LED_SCROLL_LOCK_SCANCODE && (kbled & (1 << USB_LED_SCROLL_LOCK))) ||


                (led_map[i].scan == USB_LED_COMPOSE_SCANCODE && (kbled & (1 << USB_LED_COMPOSE))) ||


                (led_map[i].scan == USB_LED_KANA_SCANCODE && (kbled & (1 << USB_LED_KANA))) ||

                (0)) {
                led_buffer[i].r = 255 - led_buffer[i].r;
                led_buffer[i].g = 255 - led_buffer[i].g;
                led_buffer[i].b = 255 - led_buffer[i].b;
            }
        }
    }
}
