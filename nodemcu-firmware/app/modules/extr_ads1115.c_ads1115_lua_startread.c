
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int os_timer_func_t ;
typedef int lua_State ;
struct TYPE_3__ {scalar_t__ comp; int threshold_low; int threshold_hi; scalar_t__ mode; int samples_value; int timer; int config; int i2c_addr; int timer_ref; } ;
typedef TYPE_1__ ads_ctrl_ud_t ;


 scalar_t__ ADS1115_CQUE_1CONV ;
 scalar_t__ ADS1115_CQUE_2CONV ;
 scalar_t__ ADS1115_CQUE_4CONV ;
 scalar_t__ ADS1115_MODE_SINGLE ;
 int ADS1115_POINTER_CONFIG ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TLIGHTFUNCTION ;
 int NODE_DBG (char*,int ) ;
 scalar_t__ ads1115_lua_readoutdone ;
 int luaL_argcheck (int *,int,int,char*) ;
 TYPE_1__* luaL_checkudata (int *,int,int ) ;
 int luaL_ref (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int metatable_name ;
 int os_timer_arm (int *,int,int ) ;
 int os_timer_disarm (int *) ;
 int os_timer_setfn (int *,int *,void*) ;
 int write_reg (int ,int ,int ) ;

__attribute__((used)) static int ads1115_lua_startread(lua_State *L) {
    ads_ctrl_ud_t *ads_ctrl = luaL_checkudata(L, 1, metatable_name);

    if (((ads_ctrl->comp == ADS1115_CQUE_1CONV) ||
         (ads_ctrl->comp == ADS1115_CQUE_2CONV) ||
         (ads_ctrl->comp == ADS1115_CQUE_4CONV)) &&
        (ads_ctrl->threshold_low == 0x7FFF) &&
        (ads_ctrl->threshold_hi == 0x8000)) {

        if (ads_ctrl->mode == ADS1115_MODE_SINGLE) {
            NODE_DBG("ads1115 trigger config: %04x", ads_ctrl->config);
            write_reg(ads_ctrl->i2c_addr, ADS1115_POINTER_CONFIG, ads_ctrl->config);
        }
        return 0;
    }

    luaL_argcheck(L, (lua_type(L, 2) == LUA_TFUNCTION || lua_type(L, 2) == LUA_TLIGHTFUNCTION), 2, "Must be function");
    lua_pushvalue(L, 2);
    ads_ctrl->timer_ref = luaL_ref(L, LUA_REGISTRYINDEX);

    if (ads_ctrl->mode == ADS1115_MODE_SINGLE) {
        write_reg(ads_ctrl->i2c_addr, ADS1115_POINTER_CONFIG, ads_ctrl->config);
    }


    os_timer_disarm(&ads_ctrl->timer);
    os_timer_setfn(&ads_ctrl->timer, (os_timer_func_t *)ads1115_lua_readoutdone, (void *)ads_ctrl);

    int msec = 1;
    switch (ads_ctrl->samples_value) {
        case 129:
            msec = 150;
            break;
        case 136:
            msec = 75;
            break;
        case 134:
            msec = 35;
            break;
        case 131:
            msec = 20;
            break;
        case 137:
            msec = 10;
            break;
        case 135:
            msec = 5;
            break;
        case 133:
        case 132:
            msec = 3;
            break;
        case 130:
        case 128:
            msec = 2;
    }
    os_timer_arm(&ads_ctrl->timer, msec, 0);
    return 0;
}
