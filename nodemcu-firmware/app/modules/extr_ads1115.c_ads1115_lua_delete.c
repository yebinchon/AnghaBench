
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {scalar_t__ timer_ref; int timer; } ;
typedef TYPE_1__ ads_ctrl_ud_t ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 TYPE_1__* luaL_checkudata (int *,int,int ) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int metatable_name ;
 int os_timer_disarm (int *) ;

__attribute__((used)) static int ads1115_lua_delete(lua_State *L) {
    ads_ctrl_ud_t *ads_ctrl = luaL_checkudata(L, 1, metatable_name);
    if (ads_ctrl->timer_ref != LUA_NOREF) {
        os_timer_disarm(&ads_ctrl->timer);
        luaL_unref(L, LUA_REGISTRYINDEX, ads_ctrl->timer_ref);
    }
    return 0;
}
