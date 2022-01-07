
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int GET_FILE_OBJ ;
 int fd ;
 int luaL_error (int *,char*) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushnil (int *) ;
 scalar_t__ vfs_flush (int ) ;

__attribute__((used)) static int file_flush( lua_State* L )
{
  GET_FILE_OBJ;

  if(!fd)
    return luaL_error(L, "open a file first");
  if(vfs_flush(fd) == 0)
    lua_pushboolean(L, 1);
  else
    lua_pushnil(L);
  return 1;
}
