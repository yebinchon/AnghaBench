#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  os_timer_func_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {scalar_t__ comp; int threshold_low; int threshold_hi; scalar_t__ mode; int samples_value; int /*<<< orphan*/  timer; int /*<<< orphan*/  config; int /*<<< orphan*/  i2c_addr; int /*<<< orphan*/  timer_ref; } ;
typedef  TYPE_1__ ads_ctrl_ud_t ;

/* Variables and functions */
 scalar_t__ ADS1115_CQUE_1CONV ; 
 scalar_t__ ADS1115_CQUE_2CONV ; 
 scalar_t__ ADS1115_CQUE_4CONV ; 
#define  ADS1115_DR_128SPS 137 
#define  ADS1115_DR_16SPS 136 
#define  ADS1115_DR_250SPS 135 
#define  ADS1115_DR_32SPS 134 
#define  ADS1115_DR_475SPS 133 
#define  ADS1115_DR_490SPS 132 
#define  ADS1115_DR_64SPS 131 
#define  ADS1115_DR_860SPS 130 
#define  ADS1115_DR_8SPS 129 
#define  ADS1115_DR_920SPS 128 
 scalar_t__ ADS1115_MODE_SINGLE ; 
 int /*<<< orphan*/  ADS1115_POINTER_CONFIG ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ads1115_lua_readoutdone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  metatable_name ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(lua_State *L) {
    ads_ctrl_ud_t *ads_ctrl = FUNC2(L, 1, metatable_name);

    if (((ads_ctrl->comp == ADS1115_CQUE_1CONV) ||
         (ads_ctrl->comp == ADS1115_CQUE_2CONV) ||
         (ads_ctrl->comp == ADS1115_CQUE_4CONV)) &&
        (ads_ctrl->threshold_low == 0x7FFF) &&
        (ads_ctrl->threshold_hi == 0x8000)) {
        // conversion ready mode
        if (ads_ctrl->mode == ADS1115_MODE_SINGLE) {
            FUNC0("ads1115 trigger config: %04x", ads_ctrl->config);
            FUNC9(ads_ctrl->i2c_addr, ADS1115_POINTER_CONFIG, ads_ctrl->config);
        }
        return 0;
    }

    FUNC1(L, (FUNC5(L, 2) == LUA_TFUNCTION || FUNC5(L, 2) == LUA_TLIGHTFUNCTION), 2, "Must be function");
    FUNC4(L, 2);
    ads_ctrl->timer_ref = FUNC3(L, LUA_REGISTRYINDEX);

    if (ads_ctrl->mode == ADS1115_MODE_SINGLE) {
        FUNC9(ads_ctrl->i2c_addr, ADS1115_POINTER_CONFIG, ads_ctrl->config);
    }

    // Start a timer to wait until ADC conversion is done
    FUNC7(&ads_ctrl->timer);
    FUNC8(&ads_ctrl->timer, (os_timer_func_t *)ads1115_lua_readoutdone, (void *)ads_ctrl);

    int msec = 1; // ADS1115_DR_1600SPS, ADS1115_DR_2400SPS, ADS1115_DR_3300SPS
    switch (ads_ctrl->samples_value) {
        case ADS1115_DR_8SPS:
            msec = 150;
            break;
        case ADS1115_DR_16SPS:
            msec = 75;
            break;
        case ADS1115_DR_32SPS:
            msec = 35;
            break;
        case ADS1115_DR_64SPS:
            msec = 20;
            break;
        case ADS1115_DR_128SPS:
            msec = 10;
            break;
        case ADS1115_DR_250SPS:
            msec = 5;
            break;
        case ADS1115_DR_475SPS:
        case ADS1115_DR_490SPS:
            msec = 3;
            break;
        case ADS1115_DR_860SPS:
        case ADS1115_DR_920SPS:
            msec = 2;
    }
    FUNC6(&ads_ctrl->timer, msec, 0);
    return 0;
}