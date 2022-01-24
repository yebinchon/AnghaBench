#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
#define  ARROWS 137 
#define  CHORD 136 
#define  DVORAK 135 
#define  FIRMWARE 134 
#define  GAMING 133 
#define  LAYERS 132 
#define  MEDIA_FN 131 
#define  MOUSE 130 
#define  NUMPAD 129 
#define  PLOVER 128 
 int PLOVER_MODE ; 
 int /*<<< orphan*/  RGBLIGHT_MODE_BREATHING ; 
 int /*<<< orphan*/  RGBLIGHT_MODE_KNIGHT ; 
 int /*<<< orphan*/  RGBLIGHT_MODE_STATIC_LIGHT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

uint32_t FUNC9(uint32_t state) {
    uint8_t layer = FUNC0(state);

    switch (layer) {
        case DVORAK:
            FUNC5();
            FUNC2(RGBLIGHT_MODE_STATIC_LIGHT);

            if (PLOVER_MODE) {
                FUNC1();
                PLOVER_MODE = false;
            }

            break;

        case PLOVER:
            FUNC7();
            FUNC2(RGBLIGHT_MODE_BREATHING + 3);

            if (!(PLOVER_MODE)) {
                FUNC1();
                PLOVER_MODE = true;
            }

            break;

        case GAMING:
            FUNC7();
            FUNC2(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                FUNC1();
                PLOVER_MODE = false;
            }

            break;

        case ARROWS:
            FUNC3();
            FUNC2(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                FUNC1();
                PLOVER_MODE = false;
            }

            break;

        case MOUSE:
            FUNC3();
            FUNC2(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                FUNC1();
                PLOVER_MODE = false;
            }

            break;

        case NUMPAD:
            FUNC3();
            FUNC2(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                FUNC1();
                PLOVER_MODE = false;
            }

            break;

        case LAYERS:
            FUNC4();
            FUNC2(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                FUNC1();
                PLOVER_MODE = false;
            }

            break;

        case MEDIA_FN:
            FUNC8();
            FUNC2(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                FUNC1();
                PLOVER_MODE = false;
            }

            break;

        case CHORD:
            FUNC6();
            FUNC2(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                FUNC1();
                PLOVER_MODE = false;
            }

            break;

        case FIRMWARE:
            FUNC6();
            FUNC2(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                FUNC1();
                PLOVER_MODE = false;
            }

            break;

        default:
            break;
    }

    return state;
}