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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  _ADJUST 132 
#define  _GAME 131 
#define  _LOWER 130 
#define  _QWERTY 129 
#define  _RAISE 128 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_layer_state ; 
 scalar_t__ layer_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(void)
{
    uint8_t layer = layer_state ? FUNC1(layer_state) : FUNC2(default_layer_state);
#ifdef OLED_90ROTATION
    oled_write_P(PSTR("Layer"), false);
#else
    FUNC3(FUNC0("Layer: "), false);
#endif

    switch (layer)
    {
        case _QWERTY:
            FUNC3(FUNC0("BASE "), false);
            break;
#ifndef GAMELAYER_DISABLE
        case _GAME:
            FUNC3(FUNC0("GAME "), false);
            break;
#endif
        case _LOWER:
            FUNC3(FUNC0("LOWER"), false);
            break;
        case _RAISE:
            FUNC3(FUNC0("RAISE"), false);
            break;
#ifdef TRILAYER_ENABLED
        case _ADJUST:
            oled_write_P(PSTR("ADJST"), false);
            break;
#endif
    }
}