
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int ENC_DATA ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_remove (int *,int) ;
 int sjson_encoder (int *) ;
 int sjson_encoder_read_int (int *,int *,int) ;

__attribute__((used)) static int sjson_encode(lua_State *L) {
  sjson_encoder(L);

  ENC_DATA *data = (ENC_DATA *)luaL_checkudata(L, -1, "sjson.encoder");

  int rc = sjson_encoder_read_int(L, data, 1000000);

  lua_remove(L, -(rc + 1));

  return rc;
}
