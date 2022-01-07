
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int JSN_DATA ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int sjson_decoder_result_int (int *,int *) ;

__attribute__((used)) static int sjson_decoder_result(lua_State *L) {
  JSN_DATA *data = (JSN_DATA *)luaL_checkudata(L, 1, "sjson.decoder");

  return sjson_decoder_result_int(L, data);
}
