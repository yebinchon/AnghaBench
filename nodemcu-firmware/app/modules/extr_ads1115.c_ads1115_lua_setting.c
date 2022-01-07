
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int lua_State ;
typedef scalar_t__ int16_t ;
struct TYPE_3__ {int gain; scalar_t__ chip_id; int samples; int samples_value; int mode; int threshold_low; int threshold_hi; int comp; int config; int i2c_addr; } ;
typedef TYPE_1__ ads_ctrl_ud_t ;


 scalar_t__ ADS1115_ADS1115 ;
 int ADS1115_CLAT_NONLAT ;
 int ADS1115_CMODE_TRAD ;
 int ADS1115_CMODE_WINDOW ;
 int ADS1115_CPOL_ACTVLOW ;
 int ADS1115_CQUE_1CONV ;
 int ADS1115_CQUE_2CONV ;
 int ADS1115_CQUE_4CONV ;
 int ADS1115_CQUE_NONE ;
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
 int ADS1115_POINTER_CONFIG ;
 int ADS1115_POINTER_THRESH_HI ;
 int ADS1115_POINTER_THRESH_LOW ;
 int IS_CHANNEL_VALID (int) ;
 int NODE_DBG (char*,int) ;
 int get_value (int,int,int*) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_argerror (int *,int,char*) ;
 int luaL_checkinteger (int *,int) ;
 TYPE_1__* luaL_checkudata (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int metatable_name ;
 char* unexpected_value ;
 int write_reg (int ,int ,int) ;

__attribute__((used)) static int ads1115_lua_setting(lua_State *L) {
    int argc = lua_gettop(L);
    if (argc != 5 && argc != 6 && argc != 8 && argc != 9) {
        luaL_error(L, "invalid number of arguments to 'setting'");
    }
    ads_ctrl_ud_t *ads_ctrl = luaL_checkudata(L, 1, metatable_name);

    uint16_t gain = luaL_checkinteger(L, 2);
    luaL_argcheck(L, (gain == ADS1115_PGA_6_144V) || (gain == ADS1115_PGA_4_096V) || (gain == ADS1115_PGA_2_048V) ||
                     (gain == ADS1115_PGA_1_024V) || (gain == ADS1115_PGA_0_512V) || (gain == ADS1115_PGA_0_256V),
                  2, unexpected_value);
    ads_ctrl->gain = gain;

    uint16_t samples_value = luaL_checkinteger(L, 3);
    uint16_t samples = 0;
    if (ads_ctrl->chip_id == ADS1115_ADS1115) {
        switch(samples_value) {
            case 129:
                samples = 0;
                break;
            case 138:
                samples = 0x20;
                break;
            case 135:
                samples = 0x40;
                break;
            case 131:
                samples = 0x60;
                break;
            case 140:
                samples = 0x80;
                break;
            case 136:
                samples = 0xA0;
                break;
            case 133:
                samples = 0xC0;
                break;
            case 130:
                samples = 0xE0;
                break;
            default:
                luaL_argerror(L, 3, unexpected_value);
        }
    } else {
        switch(samples_value) {
            case 140:
                samples = 0;
                break;
            case 136:
                samples = 0x20;
                break;
            case 132:
                samples = 0x40;
                break;
            case 128:
                samples = 0x60;
                break;
            case 139:
                samples = 0x80;
                break;
            case 137:
                samples = 0xA0;
                break;
            case 134:
                samples = 0xC0;
                break;
            default:
                luaL_argerror(L, 3, unexpected_value);
        }
    }
    ads_ctrl->samples = samples;
    ads_ctrl->samples_value = samples_value;

    uint16_t channel = luaL_checkinteger(L, 4);
    luaL_argcheck(L, IS_CHANNEL_VALID(channel), 4, unexpected_value);

    uint16_t mode = luaL_checkinteger(L, 5);
    luaL_argcheck(L, (mode == ADS1115_MODE_SINGLE) || (mode == ADS1115_MODE_CONTIN), 5, unexpected_value);
    ads_ctrl->mode = mode;
    uint16_t os = mode == ADS1115_MODE_SINGLE ? ADS1115_OS_SINGLE : ADS1115_OS_NON;

    uint16_t comp = ADS1115_CQUE_NONE;

    if (argc > 5) {

        comp = luaL_checkinteger(L, 6);
        luaL_argcheck(L, (comp == ADS1115_CQUE_1CONV) || (comp == ADS1115_CQUE_2CONV) || (comp == ADS1115_CQUE_4CONV),
                      6, unexpected_value);
        uint16_t threshold_low = 0x7FFF;
        uint16_t threshold_hi = 0x8000;
        if (argc > 6) {

            threshold_low = luaL_checkinteger(L, 7);
            threshold_hi = luaL_checkinteger(L, 8);
            luaL_argcheck(L, (int16_t)threshold_low <= (int16_t)threshold_hi, 7, "threshold_low > threshold_hi");
            luaL_argcheck(L, get_value(gain, channel, &threshold_low), 7, unexpected_value);
            luaL_argcheck(L, get_value(gain, channel, &threshold_hi), 8, unexpected_value);
        }
        ads_ctrl->threshold_low = threshold_low;
        ads_ctrl->threshold_hi = threshold_hi;
        NODE_DBG("ads1115 low: %04x\n", threshold_low);
        NODE_DBG("ads1115 hi : %04x\n", threshold_hi);
        write_reg(ads_ctrl->i2c_addr, ADS1115_POINTER_THRESH_LOW, threshold_low);
        write_reg(ads_ctrl->i2c_addr, ADS1115_POINTER_THRESH_HI, threshold_hi);
    }
    ads_ctrl->comp = comp;

    uint16_t comparator_mode = ADS1115_CMODE_TRAD;
    if (argc == 9) {
        comparator_mode = luaL_checkinteger(L, 9);
        luaL_argcheck(L, (comparator_mode == ADS1115_CMODE_WINDOW) || (comparator_mode == ADS1115_CMODE_TRAD),
                      9, unexpected_value);
    }

    uint16_t config = (os | channel | gain | mode | samples | comparator_mode | ADS1115_CPOL_ACTVLOW | ADS1115_CLAT_NONLAT | comp);
    ads_ctrl->config = config;

    NODE_DBG("ads1115 config: %04x\n", ads_ctrl->config);
    write_reg(ads_ctrl->i2c_addr, ADS1115_POINTER_CONFIG, config);
    return 0;
}
