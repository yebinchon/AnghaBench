
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;


 int lua_pushinteger (int *,int) ;
 int system_get_time () ;

__attribute__((used)) static int tmr_now(lua_State* L){
 uint32_t now = 0x7FFFFFFF & system_get_time();
 lua_pushinteger(L, now);
 return 1;
}
