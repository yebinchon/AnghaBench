
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int sjson_decoder_write_int (int *,int,int) ;

__attribute__((used)) static int sjson_decoder_write(lua_State *L) {
  return sjson_decoder_write_int(L, 1, 2);
}
