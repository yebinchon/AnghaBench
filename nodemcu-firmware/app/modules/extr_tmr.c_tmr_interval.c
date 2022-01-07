
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* tmr_t ;
typedef int lua_State ;
struct TYPE_3__ {int mode; scalar_t__ interval; int os; } ;


 scalar_t__ MAX_TIMEOUT ;
 int MAX_TIMEOUT_ERR_STR ;
 int TIMER_IDLE_FLAG ;
 int TIMER_MODE_AUTO ;
 int TIMER_MODE_OFF ;
 int luaL_argcheck (int *,int,int,int ) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 int os_timer_arm (int *,scalar_t__,int) ;
 int os_timer_disarm (int *) ;
 TYPE_1__* tmr_get (int *,int) ;

__attribute__((used)) static int tmr_interval(lua_State* L){
 tmr_t tmr = tmr_get(L, 1);

 uint32_t interval = luaL_checkinteger(L, 2);
 luaL_argcheck(L, (interval > 0 && interval <= MAX_TIMEOUT), 2, MAX_TIMEOUT_ERR_STR);
 if(tmr->mode != TIMER_MODE_OFF){
  tmr->interval = interval;
  if(!(tmr->mode&TIMER_IDLE_FLAG)){
   os_timer_disarm(&tmr->os);
   os_timer_arm(&tmr->os, tmr->interval, tmr->mode==TIMER_MODE_AUTO);
  }
 }
 return 0;
}
