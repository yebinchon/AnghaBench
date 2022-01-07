
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int lua_State ;
struct TYPE_3__ {int gain; } ;
typedef TYPE_1__ ads_ctrl_ud_t ;


 double get_mvolt (int ,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,double) ;

__attribute__((used)) static void read_common(ads_ctrl_ud_t * ads_ctrl, uint16_t raw, lua_State *L) {
    double mvolt = get_mvolt(ads_ctrl->gain, raw);
    lua_pushnumber(L, mvolt);
    lua_pushnil(L);
    lua_pushinteger(L, raw);
    lua_pushnil(L);

}
