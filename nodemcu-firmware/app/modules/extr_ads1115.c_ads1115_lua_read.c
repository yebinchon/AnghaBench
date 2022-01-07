
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int lua_State ;
struct TYPE_4__ {int i2c_addr; } ;
typedef TYPE_1__ ads_ctrl_ud_t ;


 int ADS1115_POINTER_CONVERSION ;
 TYPE_1__* luaL_checkudata (int *,int,int ) ;
 int metatable_name ;
 int read_common (TYPE_1__*,int ,int *) ;
 int read_reg (int ,int ) ;

__attribute__((used)) static int ads1115_lua_read(lua_State *L) {
    ads_ctrl_ud_t *ads_ctrl = luaL_checkudata(L, 1, metatable_name);
    uint16_t raw = read_reg(ads_ctrl->i2c_addr, ADS1115_POINTER_CONVERSION);
    read_common(ads_ctrl, raw, L);
    return 4;
}
