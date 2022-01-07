
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int ENC_DATA ;


 scalar_t__ LUA_TNUMBER ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_tointeger (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int sjson_encoder_read_int (int *,int *,int) ;

__attribute__((used)) static int sjson_encoder_read(lua_State *L) {
  ENC_DATA *data = (ENC_DATA *)luaL_checkudata(L, 1, "sjson.encoder");

  int readsize = 1024;
  if (lua_type(L, 2) == LUA_TNUMBER) {
    readsize = lua_tointeger(L, 2);
    if (readsize < 1) {
      readsize = 1;
    }
  }

  return sjson_encoder_read_int(L, data, readsize);
}
