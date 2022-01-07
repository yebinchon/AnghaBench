
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int file_close (int *) ;
 int file_open (int *) ;
 int file_write (int *) ;
 int lua_isnil (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushvalue (int *,int) ;
 int lua_remove (int *,int) ;
 int lua_replace (int *,int) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int file_putfile( lua_State* L )
{



  int ret_cnt = 0;
  lua_settop(L, 2);
  lua_pushvalue(L, 2);
  lua_pushliteral(L, "w+");
  lua_replace(L, 2);

  file_open(L);


  if (!lua_isnil(L, -1)) {
    lua_remove(L, 2);
    lua_replace(L, 1);

    file_write(L);

    lua_remove(L, 2);
    file_close(L);
    lua_remove(L, 1);
  }
  return 1;
}
