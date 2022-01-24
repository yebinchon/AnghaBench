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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ISSI_ADDR_1 ; 
 int /*<<< orphan*/  ISSI_ADDR_2 ; 
 int /*<<< orphan*/  ISSI_ADDR_3 ; 

void FUNC5(void)
{
#if defined(RGB_BACKLIGHT_M6_B)
    IS31FL3218_update_pwm_buffers();
#elif defined(RGB_BACKLIGHT_HS60)
    IS31FL3733_update_pwm_buffers( ISSI_ADDR_1, 0 );
    IS31FL3733_update_led_control_registers( ISSI_ADDR_1, 0 );
#elif defined(RGB_BACKLIGHT_NK65)
    IS31FL3733_update_pwm_buffers( ISSI_ADDR_1, 0 );
    IS31FL3733_update_pwm_buffers( ISSI_ADDR_2, 1 );
    IS31FL3733_update_led_control_registers( ISSI_ADDR_1, 0 );
    IS31FL3733_update_led_control_registers( ISSI_ADDR_2, 1 );
#elif defined(RGB_BACKLIGHT_U80_A)
    static uint8_t driver = 0;
    switch ( driver )
    {
        case 0:
            IS31FL3731_update_pwm_buffers( ISSI_ADDR_1, 0 );
            break;
        case 1:
            IS31FL3731_update_pwm_buffers( ISSI_ADDR_2, 1 );
            break;
        case 2:
            IS31FL3731_update_pwm_buffers( ISSI_ADDR_3, 2 );
            break;
    }
    if ( ++driver > 2 )
    {
        driver = 0;
    }
#else
    FUNC2( ISSI_ADDR_1, 0 );
    FUNC2( ISSI_ADDR_2, 1 );
    FUNC1( ISSI_ADDR_1, 0 );
    FUNC1( ISSI_ADDR_2, 1 );
#endif
}