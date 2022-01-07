
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* tmr_t ;
typedef int lua_State ;
struct TYPE_3__ {int mode; } ;


 int TIMER_IDLE_FLAG ;
 int TIMER_MODE_OFF ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 TYPE_1__* tmr_get (int *,int) ;

__attribute__((used)) static int tmr_state(lua_State* L){
 tmr_t tmr = tmr_get(L, 1);

 if(tmr->mode == TIMER_MODE_OFF){
  lua_pushnil(L);
  return 1;
 }

  lua_pushboolean(L, (tmr->mode & TIMER_IDLE_FLAG) == 0);
  lua_pushinteger(L, tmr->mode & (~TIMER_IDLE_FLAG));
 return 2;
}
