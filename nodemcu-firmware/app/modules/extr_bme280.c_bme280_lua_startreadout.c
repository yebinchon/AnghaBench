
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int os_timer_func_t ;
typedef int lua_State ;


 int BME280_FORCED_MODE ;
 int BME280_REGISTER_CONTROL ;
 int BME280_REGISTER_CONTROL_HUM ;
 scalar_t__ BME280_SAMPLING_DELAY ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int NODE_DBG (char*,...) ;
 int bme280_mode ;
 int bme280_ossh ;
 scalar_t__ bme280_readoutdone ;
 int bme280_timer ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 scalar_t__ luaL_ref (int *,int ) ;
 scalar_t__ lua_connected_readout_ref ;
 int lua_isnoneornil (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int os_timer_arm (int *,scalar_t__,int ) ;
 int os_timer_disarm (int *) ;
 int os_timer_setfn (int *,int *,int *) ;
 int w8u (int ,int) ;

__attribute__((used)) static int bme280_lua_startreadout(lua_State* L) {
 uint32_t delay;

 if (lua_isnumber(L, 1)) {
  delay = luaL_checkinteger(L, 1);
  if (!delay) {delay = BME280_SAMPLING_DELAY;}
 }

 if (!lua_isnoneornil(L, 2)) {
  lua_pushvalue(L, 2);
  lua_connected_readout_ref = luaL_ref(L, LUA_REGISTRYINDEX);
 } else {
  lua_connected_readout_ref = LUA_NOREF;
 }

 w8u(BME280_REGISTER_CONTROL_HUM, bme280_ossh);
 w8u(BME280_REGISTER_CONTROL, (bme280_mode & 0xFC) | BME280_FORCED_MODE);
 NODE_DBG("control old: %x, control: %x, delay: %d\n", bme280_mode, (bme280_mode & 0xFC) | BME280_FORCED_MODE, delay);

 if (lua_connected_readout_ref != LUA_NOREF) {
  NODE_DBG("timer armed\n");
  os_timer_disarm (&bme280_timer);
  os_timer_setfn (&bme280_timer, (os_timer_func_t *)bme280_readoutdone, L);
  os_timer_arm (&bme280_timer, delay, 0);
 }
 return 0;
}
