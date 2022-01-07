
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int AT_HEAD ;
 int checkPipeTable (int *,int,int ) ;
 int getsize_delim (int *,int,int *) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_settop (int *,int) ;
 int pipe_read_aux ;

__attribute__((used)) static int pipe_reader(lua_State *L) {
  lua_settop(L,2);
  checkPipeTable (L, 1,AT_HEAD);
  getsize_delim(L, 2, ((void*)0));
  lua_pushcclosure(L, pipe_read_aux, 2);
  return 1;
}
