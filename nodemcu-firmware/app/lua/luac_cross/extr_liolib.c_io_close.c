
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int IO_OUTPUT ;
 int LUA_ENVIRONINDEX ;
 int aux_close (int *) ;
 scalar_t__ lua_isnone (int *,int) ;
 int lua_rawgeti (int *,int ,int ) ;
 int tofile (int *) ;

__attribute__((used)) static int io_close (lua_State *L) {
  if (lua_isnone(L, 1))
    lua_rawgeti(L, LUA_ENVIRONINDEX, IO_OUTPUT);
  tofile(L);
  return aux_close(L);
}
