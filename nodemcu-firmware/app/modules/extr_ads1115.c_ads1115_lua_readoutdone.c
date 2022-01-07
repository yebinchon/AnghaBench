
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int lua_State ;
struct TYPE_3__ {int timer_ref; int timer; int i2c_addr; } ;
typedef TYPE_1__ ads_ctrl_ud_t ;


 int ADS1115_POINTER_CONVERSION ;
 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int luaL_unref (int *,int ,int ) ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_rawgeti (int *,int ,int ) ;
 int os_timer_disarm (int *) ;
 int read_common (TYPE_1__*,int ,int *) ;
 int read_reg (int ,int ) ;

__attribute__((used)) static int ads1115_lua_readoutdone(void * param) {
    ads_ctrl_ud_t * ads_ctrl = (ads_ctrl_ud_t *)param;
    uint16_t raw = read_reg(ads_ctrl->i2c_addr, ADS1115_POINTER_CONVERSION);
    lua_State *L = lua_getstate();
    os_timer_disarm(&ads_ctrl->timer);
    lua_rawgeti(L, LUA_REGISTRYINDEX, ads_ctrl->timer_ref);
    luaL_unref(L, LUA_REGISTRYINDEX, ads_ctrl->timer_ref);
    ads_ctrl->timer_ref = LUA_NOREF;
    read_common(ads_ctrl, raw, L);
    lua_call(L, 4, 0);
}
