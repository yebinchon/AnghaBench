
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* tmr_t ;
typedef int lua_State ;
struct TYPE_2__ {scalar_t__ lua_ref; scalar_t__ self_ref; int mode; } ;


 scalar_t__ LUA_NOREF ;
 scalar_t__ LUA_REFNIL ;
 int LUA_REGISTRYINDEX ;
 int TIMER_IDLE_FLAG ;
 int TIMER_MODE_AUTO ;
 int TIMER_MODE_OFF ;
 int TIMER_MODE_SEMI ;
 int TIMER_MODE_SINGLE ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_rawgeti (int *,int ,scalar_t__) ;

__attribute__((used)) static void alarm_timer_common(void* arg){
 tmr_t tmr = (tmr_t)arg;
 lua_State* L = lua_getstate();
 if(tmr->lua_ref == LUA_NOREF)
  return;
 lua_rawgeti(L, LUA_REGISTRYINDEX, tmr->lua_ref);
 lua_rawgeti(L, LUA_REGISTRYINDEX, tmr->self_ref);

 if(tmr->mode == TIMER_MODE_SINGLE){
  luaL_unref(L, LUA_REGISTRYINDEX, tmr->lua_ref);
  tmr->lua_ref = LUA_NOREF;
  tmr->mode = TIMER_MODE_OFF;
 }else if(tmr->mode == TIMER_MODE_SEMI){
  tmr->mode |= TIMER_IDLE_FLAG;
 }
 if (tmr->mode != TIMER_MODE_AUTO && tmr->self_ref != LUA_REFNIL) {
  luaL_unref(L, LUA_REGISTRYINDEX, tmr->self_ref);
  tmr->self_ref = LUA_NOREF;
 }
 lua_call(L, 1, 0);
}
