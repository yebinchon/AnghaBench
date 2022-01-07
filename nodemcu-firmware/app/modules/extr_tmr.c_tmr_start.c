
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* tmr_t ;
typedef int lua_State ;
struct TYPE_3__ {scalar_t__ self_ref; int mode; int interval; int os; } ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int TIMER_IDLE_FLAG ;
 int TIMER_MODE_AUTO ;
 scalar_t__ luaL_ref (int *,int ) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int os_timer_arm (int *,int ,int) ;
 TYPE_1__* tmr_get (int *,int) ;

__attribute__((used)) static int tmr_start(lua_State* L){
 tmr_t tmr = tmr_get(L, 1);

 if (tmr->self_ref == LUA_NOREF) {
  lua_pushvalue(L, 1);
  tmr->self_ref = luaL_ref(L, LUA_REGISTRYINDEX);
 }


 if(!(tmr->mode&TIMER_IDLE_FLAG)){
  lua_pushboolean(L, 0);
 }else{
  tmr->mode &= ~TIMER_IDLE_FLAG;
  os_timer_arm(&tmr->os, tmr->interval, tmr->mode==TIMER_MODE_AUTO);
  lua_pushboolean(L, 1);
 }
 return 1;
}
