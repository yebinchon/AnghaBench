
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int lua_pushboolean (int *,int) ;
 scalar_t__ vfs_chdir (char const*) ;

__attribute__((used)) static int file_chdir( lua_State *L )
{
  const char *path = luaL_checkstring( L, 1 );

  lua_pushboolean( L, 0 <= vfs_chdir( path ) );
  return 1;
}
