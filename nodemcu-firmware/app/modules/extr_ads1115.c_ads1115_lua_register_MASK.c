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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int samples_value; int threshold_low; int threshold_hi; int config; int /*<<< orphan*/  timer_ref; int /*<<< orphan*/  mode; int /*<<< orphan*/  comp; int /*<<< orphan*/  samples; int /*<<< orphan*/  gain; scalar_t__ i2c_addr; scalar_t__ chip_id; } ;
typedef  TYPE_1__ ads_ctrl_ud_t ;

/* Variables and functions */
 scalar_t__ ADS1115_ADS1115 ; 
 int /*<<< orphan*/  ADS1115_CQUE_NONE ; 
 int ADS1115_DEFAULT_CONFIG_REG ; 
 int /*<<< orphan*/  ADS1115_DR_128SPS ; 
 int /*<<< orphan*/  ADS1115_MODE_SINGLE ; 
 int /*<<< orphan*/  ADS1115_PGA_6_144V ; 
 int /*<<< orphan*/  ADS1115_POINTER_CONFIG ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  LUA_NOREF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  metatable_name ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* unexpected_value ; 

__attribute__((used)) static int FUNC8(lua_State *L, uint8_t chip_id) {
    uint8_t i2c_id = FUNC2(L, 1);
    FUNC1(L, 0 == i2c_id, 1, "i2c_id must be 0");
    uint8_t i2c_addr = FUNC2(L, 2);
    FUNC1(L, FUNC0(i2c_addr), 2, unexpected_value);
    uint16_t config_read = FUNC7(i2c_addr, ADS1115_POINTER_CONFIG);
    if (config_read == 0xFFFF) {
        return FUNC3(L, "found no device");
    }
    if (config_read != ADS1115_DEFAULT_CONFIG_REG) {
        return FUNC3(L, "unexpected config value (%p) please reset device before calling this function", config_read);
    }
    ads_ctrl_ud_t *ads_ctrl = (ads_ctrl_ud_t *)FUNC5(L, sizeof(ads_ctrl_ud_t));
    if (NULL == ads_ctrl) {
        return FUNC3(L, "ads1115 malloc: out of memory");
    }
    FUNC4(L, metatable_name);
    FUNC6(L, -2);
    ads_ctrl->chip_id = chip_id;
    ads_ctrl->i2c_addr = i2c_addr;
    ads_ctrl->gain = ADS1115_PGA_6_144V;
    ads_ctrl->samples = ADS1115_DR_128SPS;
    ads_ctrl->samples_value = chip_id == ADS1115_ADS1115 ? 128 : 1600;
    ads_ctrl->comp = ADS1115_CQUE_NONE;
    ads_ctrl->mode = ADS1115_MODE_SINGLE;
    ads_ctrl->threshold_low = 0x8000;
    ads_ctrl->threshold_hi = 0x7FFF;
    ads_ctrl->config = ADS1115_DEFAULT_CONFIG_REG;
    ads_ctrl->timer_ref = LUA_NOREF;
    return 1;
}