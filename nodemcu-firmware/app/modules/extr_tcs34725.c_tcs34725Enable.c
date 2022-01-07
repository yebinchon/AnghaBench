
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int os_timer_func_t ;
typedef int lua_State ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TLIGHTFUNCTION ;
 int TCS34725_ENABLE ;
 int TCS34725_ENABLE_PON ;
 int TCS34725_EN_DELAY ;
 scalar_t__ cb_tcs_en ;
 int dbg_printf (char*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int os_timer_arm (int *,int ,int ) ;
 int os_timer_disarm (int *) ;
 int os_timer_setfn (int *,int *,int *) ;
 scalar_t__ tcs34725EnableDone ;
 int tcs34725Write8 (int ,int ) ;
 int tcs34725_timer ;

uint8_t tcs34725Enable(lua_State* L)
{
 dbg_printf("Enable begun\n");

 if (lua_type(L, 1) == LUA_TFUNCTION || lua_type(L, 1) == LUA_TLIGHTFUNCTION) {
  if (cb_tcs_en != LUA_NOREF) {
   luaL_unref(L, LUA_REGISTRYINDEX, cb_tcs_en);
  }
  lua_pushvalue(L, 1);
  cb_tcs_en = luaL_ref(L, LUA_REGISTRYINDEX);
 } else {
  return luaL_error(L, "Enable argument must be a function.");
 }

 tcs34725Write8(TCS34725_ENABLE, TCS34725_ENABLE_PON);

 os_timer_disarm (&tcs34725_timer);
 os_timer_setfn (&tcs34725_timer, (os_timer_func_t *)tcs34725EnableDone, ((void*)0));
 os_timer_arm (&tcs34725_timer, TCS34725_EN_DELAY, 0);

 return 0;
}
