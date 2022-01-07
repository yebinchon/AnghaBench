
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int N ;
 int TBL ;
 int lua_pushvalue (int *,int ) ;
 int lua_settop (int *,int ) ;
 int pipe_read (int *) ;

__attribute__((used)) static int pipe_read_aux(lua_State *L) {
  lua_settop(L, 0);
  lua_pushvalue(L, TBL);
  lua_pushvalue(L, N);
  return pipe_read(L);
}
