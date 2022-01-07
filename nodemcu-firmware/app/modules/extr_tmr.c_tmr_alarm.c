
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int tmr_register (int *) ;
 int tmr_start (int *) ;

__attribute__((used)) static int tmr_alarm(lua_State* L){
 tmr_register(L);
 return tmr_start(L);
}
