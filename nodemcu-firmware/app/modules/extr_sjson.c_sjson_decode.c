
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_remove (int *,int) ;
 int sjson_decoder_int (int *,int) ;
 int sjson_decoder_write_int (int *,int,int) ;

__attribute__((used)) static int sjson_decode(lua_State *L) {
  int push_count = sjson_decoder_int(L, 2);
  if (push_count != 1) {
    luaL_error(L, "Internal error in sjson.deocder");
  }

  luaL_checkudata(L, -1, "sjson.decoder");

  push_count = sjson_decoder_write_int(L, -1, 1);

  if (push_count != 1) {
    luaL_error(L, "Incomplete JSON object passed to sjson.decode");
  }


  lua_remove(L, -2);

  return 1;
}
