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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ int16_t ;
struct TYPE_3__ {int gain; scalar_t__ chip_id; int samples; int samples_value; int mode; int threshold_low; int threshold_hi; int comp; int config; int /*<<< orphan*/  i2c_addr; } ;
typedef  TYPE_1__ ads_ctrl_ud_t ;

/* Variables and functions */
 scalar_t__ ADS1115_ADS1115 ; 
 int ADS1115_CLAT_NONLAT ; 
 int ADS1115_CMODE_TRAD ; 
 int ADS1115_CMODE_WINDOW ; 
 int ADS1115_CPOL_ACTVLOW ; 
 int ADS1115_CQUE_1CONV ; 
 int ADS1115_CQUE_2CONV ; 
 int ADS1115_CQUE_4CONV ; 
 int ADS1115_CQUE_NONE ; 
#define  ADS1115_DR_128SPS 140 
#define  ADS1115_DR_1600SPS 139 
#define  ADS1115_DR_16SPS 138 
#define  ADS1115_DR_2400SPS 137 
#define  ADS1115_DR_250SPS 136 
#define  ADS1115_DR_32SPS 135 
#define  ADS1115_DR_3300SPS 134 
#define  ADS1115_DR_475SPS 133 
#define  ADS1115_DR_490SPS 132 
#define  ADS1115_DR_64SPS 131 
#define  ADS1115_DR_860SPS 130 
#define  ADS1115_DR_8SPS 129 
#define  ADS1115_DR_920SPS 128 
 int ADS1115_MODE_CONTIN ; 
 int ADS1115_MODE_SINGLE ; 
 int ADS1115_OS_NON ; 
 int ADS1115_OS_SINGLE ; 
 int ADS1115_PGA_0_256V ; 
 int ADS1115_PGA_0_512V ; 
 int ADS1115_PGA_1_024V ; 
 int ADS1115_PGA_2_048V ; 
 int ADS1115_PGA_4_096V ; 
 int ADS1115_PGA_6_144V ; 
 int /*<<< orphan*/  ADS1115_POINTER_CONFIG ; 
 int /*<<< orphan*/  ADS1115_POINTER_THRESH_HI ; 
 int /*<<< orphan*/  ADS1115_POINTER_THRESH_LOW ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  metatable_name ; 
 char* unexpected_value ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(lua_State *L) {
    int argc = FUNC8(L);
    if (argc != 5 && argc != 6 && argc != 8 && argc != 9) { // user data counts
        FUNC7(L, "invalid number of arguments to 'setting'");
    }
    ads_ctrl_ud_t *ads_ctrl = FUNC6(L, 1, metatable_name);
    // gain
    uint16_t gain = FUNC5(L, 2);
    FUNC3(L, (gain == ADS1115_PGA_6_144V) || (gain == ADS1115_PGA_4_096V) || (gain == ADS1115_PGA_2_048V) ||
                     (gain == ADS1115_PGA_1_024V) || (gain == ADS1115_PGA_0_512V) || (gain == ADS1115_PGA_0_256V),
                  2, unexpected_value);
    ads_ctrl->gain = gain;
    // samples
    uint16_t samples_value = FUNC5(L, 3);
    uint16_t samples = 0;
    if (ads_ctrl->chip_id == ADS1115_ADS1115) {
        switch(samples_value) {
            case ADS1115_DR_8SPS:
                samples = 0;
                break;
            case ADS1115_DR_16SPS:
                samples = 0x20;
                break;
            case ADS1115_DR_32SPS:
                samples = 0x40;
                break;
            case ADS1115_DR_64SPS:
                samples = 0x60;
                break;
            case ADS1115_DR_128SPS: // default
                samples = 0x80;
                break;
            case ADS1115_DR_250SPS:
                samples = 0xA0;
                break;
            case ADS1115_DR_475SPS:
                samples = 0xC0;
                break;
            case ADS1115_DR_860SPS:
                samples = 0xE0;
                break;
            default:
                FUNC4(L, 3, unexpected_value);
        }
    } else { // ADS1115_ADS1015
        switch(samples_value) {
            case ADS1115_DR_128SPS:
                samples = 0;
                break;
            case ADS1115_DR_250SPS:
                samples = 0x20;
                break;
            case ADS1115_DR_490SPS:
                samples = 0x40;
                break;
            case ADS1115_DR_920SPS:
                samples = 0x60;
                break;
            case ADS1115_DR_1600SPS: // default
                samples = 0x80;
                break;
            case ADS1115_DR_2400SPS:
                samples = 0xA0;
                break;
            case ADS1115_DR_3300SPS:
                samples = 0xC0;
                break;
            default:
                FUNC4(L, 3, unexpected_value);
        }
    }
    ads_ctrl->samples = samples;
    ads_ctrl->samples_value = samples_value;
    // channel
    uint16_t channel = FUNC5(L, 4);
    FUNC3(L, FUNC0(channel), 4, unexpected_value);
    // mode
    uint16_t mode = FUNC5(L, 5);
    FUNC3(L, (mode == ADS1115_MODE_SINGLE) || (mode == ADS1115_MODE_CONTIN), 5, unexpected_value);
    ads_ctrl->mode = mode;
    uint16_t os = mode == ADS1115_MODE_SINGLE ? ADS1115_OS_SINGLE : ADS1115_OS_NON;

    uint16_t comp = ADS1115_CQUE_NONE;
    // Parse optional parameters
    if (argc > 5) {
        // comparator or conversion count
        comp = FUNC5(L, 6);
        FUNC3(L, (comp == ADS1115_CQUE_1CONV) || (comp == ADS1115_CQUE_2CONV) || (comp == ADS1115_CQUE_4CONV),
                      6, unexpected_value);
        uint16_t threshold_low = 0x7FFF;
        uint16_t threshold_hi = 0x8000;
        if (argc > 6) {
            // comparator thresholds
            threshold_low = FUNC5(L, 7);
            threshold_hi = FUNC5(L, 8);
            FUNC3(L, (int16_t)threshold_low <= (int16_t)threshold_hi, 7, "threshold_low > threshold_hi");
            FUNC3(L, FUNC2(gain, channel, &threshold_low), 7, unexpected_value);
            FUNC3(L, FUNC2(gain, channel, &threshold_hi), 8, unexpected_value);
        }
        ads_ctrl->threshold_low = threshold_low;
        ads_ctrl->threshold_hi = threshold_hi;
        FUNC1("ads1115 low: %04x\n", threshold_low);
        FUNC1("ads1115 hi : %04x\n", threshold_hi);
        FUNC9(ads_ctrl->i2c_addr, ADS1115_POINTER_THRESH_LOW, threshold_low);
        FUNC9(ads_ctrl->i2c_addr, ADS1115_POINTER_THRESH_HI, threshold_hi);
    }
    ads_ctrl->comp = comp;

    uint16_t comparator_mode = ADS1115_CMODE_TRAD;
    if (argc == 9) {
        comparator_mode = FUNC5(L, 9);
        FUNC3(L, (comparator_mode == ADS1115_CMODE_WINDOW) || (comparator_mode == ADS1115_CMODE_TRAD),
                      9, unexpected_value);
    }

    uint16_t config = (os | channel | gain | mode | samples | comparator_mode | ADS1115_CPOL_ACTVLOW | ADS1115_CLAT_NONLAT | comp);
    ads_ctrl->config = config;

    FUNC1("ads1115 config: %04x\n", ads_ctrl->config);
    FUNC9(ads_ctrl->i2c_addr, ADS1115_POINTER_CONFIG, config);
    return 0;
}