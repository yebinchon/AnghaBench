#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_3__ {scalar_t__ mode; int val; int /*<<< orphan*/  raw; } ;
typedef  TYPE_1__ fled_config ;
struct TYPE_4__ {scalar_t__ hue; int /*<<< orphan*/  sat; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_FRONTLED_ADDR ; 
 scalar_t__ FLED_CAPS_H ; 
 int /*<<< orphan*/  FLED_CAPS_S ; 
 scalar_t__ FLED_INDI ; 
 scalar_t__ FLED_RGB ; 
 int FLED_VAL_STEP ; 
 int USB_LED_CAPS_LOCK ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ fled_mode ; 
 int fled_val ; 
 int /*<<< orphan*/ * fleds ; 
 int FUNC4 () ; 
 TYPE_2__* layer_colors ; 
 int /*<<< orphan*/  layer_state ; 
 size_t lc_size ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(void) {
    // If EEPROM config exists, load it
    if (FUNC1()) {
        fled_config fled_conf;
        fled_conf.raw = FUNC2(EEPROM_FRONTLED_ADDR);
        fled_mode = fled_conf.mode;
        fled_val = fled_conf.val * FLED_VAL_STEP;
    // Else, default config
    } else {
        fled_mode = FLED_RGB;
        fled_val = 10 * FLED_VAL_STEP;
        FUNC3();   // Store default config to EEPROM
    }
    
    // Set default values for leds
    FUNC7(0, 0, 0, &fleds[0]);
    FUNC7(0, 0, 0, &fleds[1]);
    
    // Handle lighting for indicator mode
    if (fled_mode == FLED_INDI) {
        // Enable capslock led if enabled on host
        if (FUNC4() & (1<<USB_LED_CAPS_LOCK))
            FUNC6(FLED_CAPS_H, FLED_CAPS_S, fled_val, &fleds[0]);
        
        // Determine and set colour of layer LED according to current layer
        // if hue = sat = 0, leave LED off
        uint8_t layer = FUNC0(layer_state);
        if (layer < lc_size && !(layer_colors[layer].hue == 0 && layer_colors[layer].hue == 0))
            FUNC6(layer_colors[layer].hue, layer_colors[layer].sat, fled_val, &fleds[1]);
    }

	FUNC5();
}