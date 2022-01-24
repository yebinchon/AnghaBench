#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int int16_t ;
struct TYPE_2__ {int nkro; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_CHARGER ; 
 int /*<<< orphan*/  LED_ON ; 
 scalar_t__ LOW_VOLTAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  config_mode ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  force_usb ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ keymap_config ; 
 int /*<<< orphan*/  lufa_driver ; 
 int /*<<< orphan*/  rn42_driver ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int rn42_nkro_last ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 

void FUNC15(void)
{
    int16_t c;
    // Raw mode: interpret output report of LED state
    while ((c = FUNC7()) != -1) {
        // LED Out report: 0xFE, 0x02, 0x01, <leds>
        // To get the report over UART set bit3 with SH, command.
        static enum {LED_INIT, LED_FE, LED_02, LED_01} state = LED_INIT;
        switch (state) {
            case LED_INIT:
                if (c == 0xFE) state = LED_FE;
                else {
                    if (0x0 <= c && c <= 0x7f) FUNC14("%c", c);
                    else FUNC14(" %02X", c);
                }
                break;
            case LED_FE:
                if (c == 0x02) state = LED_02;
                else           state = LED_INIT;
                break;
            case LED_02:
                if (c == 0x01) state = LED_01;
                else           state = LED_INIT;
                break;
            case LED_01:
                FUNC4("LED status: %02X\n", c);
                FUNC10(c);
                state = LED_INIT;
                break;
            default:
                state = LED_INIT;
        }
    }

    /* Switch between USB and Bluetooth */
    if (!config_mode) { // not switch while config mode
        if (!force_usb && !FUNC9()) {
            if (FUNC5() != &rn42_driver) {
                FUNC3();
#ifdef NKRO_ENABLE
                rn42_nkro_last = keymap_config.nkro;
                keymap_config.nkro = false;
#endif
                FUNC6(&rn42_driver);
            }
        } else {
            if (FUNC5() != &lufa_driver) {
                FUNC3();
#ifdef NKRO_ENABLE
                keymap_config.nkro = rn42_nkro_last;
#endif
                FUNC6(&lufa_driver);
            }
        }
    }


    static uint16_t prev_timer = 0;
    uint16_t e = FUNC12(prev_timer);
    if (e > 1000) {
        /* every second */
        prev_timer += e/1000*1000;

        /* Low voltage alert */
        uint8_t bs = FUNC1();
        if (bs == LOW_VOLTAGE) {
            FUNC0(LED_ON);
        } else {
            FUNC0(LED_CHARGER);
        }

        /* every minute */
        uint32_t t = FUNC13()/1000;
        if (t%60 == 0) {
            uint16_t v = FUNC2();
            uint8_t h = t/3600;
            uint8_t m = t%3600/60;
            uint8_t s = t%60;
            FUNC4("%02u:%02u:%02u\t%umV\n", h, m, s, v);
            /* TODO: xprintf doesn't work for this.
            xprintf("%02u:%02u:%02u\t%umV\n", (t/3600), (t%3600/60), (t%60), v);
            */
        }
    }


    /* Connection monitor */
    if (!FUNC9() && FUNC8()) {
        FUNC11(true);
    } else {
        FUNC11(false);
    }
}