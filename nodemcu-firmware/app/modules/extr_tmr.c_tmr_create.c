
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* tmr_t ;
typedef int timer_struct_t ;
typedef int lua_State ;
struct TYPE_2__ {int os; int mode; void* self_ref; void* lua_ref; } ;


 void* LUA_NOREF ;
 int TIMER_MODE_OFF ;
 int luaL_error (int *,char*) ;
 int luaL_getmetatable (int *,char*) ;
 int lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int os_timer_disarm (int *) ;

__attribute__((used)) static int tmr_create( lua_State *L ) {
 tmr_t ud = (tmr_t)lua_newuserdata(L, sizeof(timer_struct_t));
 if (!ud) return luaL_error(L, "not enough memory");
 luaL_getmetatable(L, "tmr.timer");
 lua_setmetatable(L, -2);
 ud->lua_ref = LUA_NOREF;
 ud->self_ref = LUA_NOREF;
 ud->mode = TIMER_MODE_OFF;
 os_timer_disarm(&ud->os);
 return 1;
}
