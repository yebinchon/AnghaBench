
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int TCS34725_ENABLE ;
 int TCS34725_ENABLE_AEN ;
 int TCS34725_ENABLE_PON ;
 int TCS34725_GAIN_60X ;
 int TCS34725_INTEGRATIONTIME_2_4MS ;
 int _tcs34725Initialised ;
 int cb_tcs_en ;
 int dbg_printf (char*) ;
 int luaL_unref (int *,int ,int ) ;
 int lua_call (int *,int ,int ) ;
 int * lua_getstate () ;
 int lua_rawgeti (int *,int ,int ) ;
 int os_timer_disarm (int *) ;
 int tcs34725SetGain (int ,int *) ;
 int tcs34725SetIntegrationTime (int ,int *) ;
 int tcs34725Write8 (int ,int) ;
 int tcs34725_timer ;

uint8_t tcs34725EnableDone()
{
 dbg_printf("Enable finished\n");
 lua_State *L = lua_getstate();
 os_timer_disarm (&tcs34725_timer);
 tcs34725Write8(TCS34725_ENABLE, TCS34725_ENABLE_PON | TCS34725_ENABLE_AEN);


 _tcs34725Initialised = 1;


 tcs34725SetIntegrationTime(TCS34725_INTEGRATIONTIME_2_4MS, L);
 tcs34725SetGain(TCS34725_GAIN_60X, L);

 lua_rawgeti(L, LUA_REGISTRYINDEX, cb_tcs_en);
 luaL_unref(L, LUA_REGISTRYINDEX, cb_tcs_en);
 cb_tcs_en = LUA_NOREF;
 lua_call(L, 0, 0);

 return 0;
}
