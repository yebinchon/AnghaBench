
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_2__ {int nkro; } ;


 int LED_CHARGER ;
 int LED_ON ;
 scalar_t__ LOW_VOLTAGE ;
 int battery_led (int ) ;
 scalar_t__ battery_status () ;
 int battery_voltage () ;
 int clear_keyboard () ;
 int config_mode ;
 int dprintf (char*,scalar_t__,...) ;
 int force_usb ;
 int * host_get_driver () ;
 int host_set_driver (int *) ;
 TYPE_1__ keymap_config ;
 int lufa_driver ;
 int rn42_driver ;
 int rn42_getc () ;
 scalar_t__ rn42_linked () ;
 int rn42_nkro_last ;
 int rn42_rts () ;
 int rn42_set_leds (int) ;
 int status_led (int) ;
 int timer_elapsed (int) ;
 int timer_read32 () ;
 int xprintf (char*,int) ;

void rn42_task(void)
{
    int16_t c;

    while ((c = rn42_getc()) != -1) {


        static enum {LED_INIT, LED_FE, LED_02, LED_01} state = LED_INIT;
        switch (state) {
            case LED_INIT:
                if (c == 0xFE) state = LED_FE;
                else {
                    if (0x0 <= c && c <= 0x7f) xprintf("%c", c);
                    else xprintf(" %02X", c);
                }
                break;
            case LED_FE:
                if (c == 0x02) state = LED_02;
                else state = LED_INIT;
                break;
            case LED_02:
                if (c == 0x01) state = LED_01;
                else state = LED_INIT;
                break;
            case LED_01:
                dprintf("LED status: %02X\n", c);
                rn42_set_leds(c);
                state = LED_INIT;
                break;
            default:
                state = LED_INIT;
        }
    }


    if (!config_mode) {
        if (!force_usb && !rn42_rts()) {
            if (host_get_driver() != &rn42_driver) {
                clear_keyboard();




                host_set_driver(&rn42_driver);
            }
        } else {
            if (host_get_driver() != &lufa_driver) {
                clear_keyboard();



                host_set_driver(&lufa_driver);
            }
        }
    }


    static uint16_t prev_timer = 0;
    uint16_t e = timer_elapsed(prev_timer);
    if (e > 1000) {

        prev_timer += e/1000*1000;


        uint8_t bs = battery_status();
        if (bs == LOW_VOLTAGE) {
            battery_led(LED_ON);
        } else {
            battery_led(LED_CHARGER);
        }


        uint32_t t = timer_read32()/1000;
        if (t%60 == 0) {
            uint16_t v = battery_voltage();
            uint8_t h = t/3600;
            uint8_t m = t%3600/60;
            uint8_t s = t%60;
            dprintf("%02u:%02u:%02u\t%umV\n", h, m, s, v);



        }
    }



    if (!rn42_rts() && rn42_linked()) {
        status_led(1);
    } else {
        status_led(0);
    }
}
