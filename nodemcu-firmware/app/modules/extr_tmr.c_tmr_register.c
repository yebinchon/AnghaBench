
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef TYPE_1__* tmr_t ;
typedef scalar_t__ sint32_t ;
typedef int lua_State ;
struct TYPE_4__ {int mode; scalar_t__ lua_ref; int os; scalar_t__ interval; } ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TLIGHTFUNCTION ;
 scalar_t__ MAX_TIMEOUT ;
 char* MAX_TIMEOUT_ERR_STR ;
 int TIMER_IDLE_FLAG ;
 int TIMER_MODE_AUTO ;
 int TIMER_MODE_OFF ;
 int TIMER_MODE_SEMI ;
 int TIMER_MODE_SINGLE ;
 int alarm_timer_common ;
 int luaL_argcheck (int *,int,int,char*) ;
 void* luaL_checkinteger (int *,int) ;
 scalar_t__ luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int os_timer_disarm (int *) ;
 int os_timer_setfn (int *,int ,TYPE_1__*) ;
 TYPE_1__* tmr_get (int *,int) ;

__attribute__((used)) static int tmr_register(lua_State* L){
 tmr_t tmr = tmr_get(L, 1);

 uint32_t interval = luaL_checkinteger(L, 2);
 uint8_t mode = luaL_checkinteger(L, 3);

 luaL_argcheck(L, (interval > 0 && interval <= MAX_TIMEOUT), 2, MAX_TIMEOUT_ERR_STR);
 luaL_argcheck(L, (mode == TIMER_MODE_SINGLE || mode == TIMER_MODE_SEMI || mode == TIMER_MODE_AUTO), 3, "Invalid mode");
 luaL_argcheck(L, (lua_type(L, 4) == LUA_TFUNCTION || lua_type(L, 4) == LUA_TLIGHTFUNCTION), 4, "Must be function");

 lua_pushvalue(L, 4);
 sint32_t ref = luaL_ref(L, LUA_REGISTRYINDEX);
 if(!(tmr->mode & TIMER_IDLE_FLAG) && tmr->mode != TIMER_MODE_OFF)
  os_timer_disarm(&tmr->os);

 if(tmr->lua_ref != LUA_NOREF && tmr->lua_ref != ref)
  luaL_unref(L, LUA_REGISTRYINDEX, tmr->lua_ref);
 tmr->lua_ref = ref;
 tmr->mode = mode|TIMER_IDLE_FLAG;
 tmr->interval = interval;
 os_timer_setfn(&tmr->os, alarm_timer_common, tmr);
 return 0;
}
