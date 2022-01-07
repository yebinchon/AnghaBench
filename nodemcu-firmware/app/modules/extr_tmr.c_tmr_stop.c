
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* tmr_t ;
typedef int lua_State ;
struct TYPE_3__ {scalar_t__ self_ref; int mode; int os; } ;


 scalar_t__ LUA_NOREF ;
 scalar_t__ LUA_REFNIL ;
 int LUA_REGISTRYINDEX ;
 int TIMER_IDLE_FLAG ;
 int TIMER_MODE_OFF ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int lua_pushboolean (int *,int) ;
 int os_timer_disarm (int *) ;
 TYPE_1__* tmr_get (int *,int) ;

__attribute__((used)) static int tmr_stop(lua_State* L){
 tmr_t tmr = tmr_get(L, 1);

 if (tmr->self_ref != LUA_REFNIL) {
  luaL_unref(L, LUA_REGISTRYINDEX, tmr->self_ref);
  tmr->self_ref = LUA_NOREF;
 }


 if(!(tmr->mode & TIMER_IDLE_FLAG) && tmr->mode != TIMER_MODE_OFF){
  tmr->mode |= TIMER_IDLE_FLAG;
  os_timer_disarm(&tmr->os);
  lua_pushboolean(L, 1);
 }else{
  lua_pushboolean(L, 0);
 }
 return 1;
}
