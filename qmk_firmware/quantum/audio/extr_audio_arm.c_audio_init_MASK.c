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
typedef  int /*<<< orphan*/  dacsample_t ;
struct TYPE_2__ {int enable; int clicky_enable; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  DACD1 ; 
 int /*<<< orphan*/  DACD2 ; 
 int /*<<< orphan*/  DAC_BUFFER_SIZE ; 
 int /*<<< orphan*/  GPIOA ; 
 int /*<<< orphan*/  PAL_MODE_INPUT_ANALOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ audio_config ; 
 int audio_initialized ; 
 int /*<<< orphan*/  dac1cfg1 ; 
 int /*<<< orphan*/  dac1cfg2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ dac_buffer ; 
 scalar_t__ dac_buffer_2 ; 
 int /*<<< orphan*/  dacgrpcfg1 ; 
 int /*<<< orphan*/  dacgrpcfg2 ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  startup_song ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10() {
    if (audio_initialized) {
        return;
    }

// Check EEPROM
#if defined(STM32_EEPROM_ENABLE) || defined(PROTOCOL_ARM_ATSAM) || defined(EEPROM_SIZE)
    if (!eeconfig_is_enabled()) {
        eeconfig_init();
    }
    audio_config.raw = eeconfig_read_audio();
#else  // ARM EEPROM
    audio_config.enable        = true;
#    ifdef AUDIO_CLICKY_ON
    audio_config.clicky_enable = true;
#    endif
#endif  // ARM EEPROM

    /*
     * Starting DAC1 driver, setting up the output pin as analog as suggested
     * by the Reference Manual.
     */
    FUNC8(GPIOA, 4, PAL_MODE_INPUT_ANALOG);
    FUNC8(GPIOA, 5, PAL_MODE_INPUT_ANALOG);
    FUNC3(&DACD1, &dac1cfg1);
    FUNC3(&DACD2, &dac1cfg2);

    /*
     * Starting GPT6/7 driver, it is used for triggering the DAC.
     */
    FUNC1();
    FUNC2();

    /*
     * Starting a continuous conversion.
     */
    FUNC4(&DACD1, &dacgrpcfg1, (dacsample_t *)dac_buffer, DAC_BUFFER_SIZE);
    FUNC4(&DACD2, &dacgrpcfg2, (dacsample_t *)dac_buffer_2, DAC_BUFFER_SIZE);

    audio_initialized = true;

    if (audio_config.enable) {
        FUNC0(startup_song);
    } else {
        FUNC9();
    }
}