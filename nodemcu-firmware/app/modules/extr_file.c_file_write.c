
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int GET_FILE_OBJ ;
 int argpos ;
 int fd ;
 char* luaL_checklstring (int *,int ,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushnil (int *) ;
 size_t vfs_write (int ,char const*,size_t) ;

__attribute__((used)) static int file_write( lua_State* L )
{
  GET_FILE_OBJ;

  if(!fd)
    return luaL_error(L, "open a file first");
  size_t l, rl;
  const char *s = luaL_checklstring(L, argpos, &l);
  rl = vfs_write(fd, s, l);
  if(rl==l)
    lua_pushboolean(L, 1);
  else
    lua_pushnil(L);
  return 1;
}
