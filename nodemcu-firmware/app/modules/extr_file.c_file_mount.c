
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vol; } ;
typedef TYPE_1__ volume_type ;
typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int luaL_getmetatable (int *,char*) ;
 int luaL_optint (int *,int,int) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int vfs_mount (char const*,int) ;

__attribute__((used)) static int file_mount( lua_State *L )
{
  const char *ldrv = luaL_checkstring( L, 1 );
  int num = luaL_optint( L, 2, -1 );
  volume_type *vol = (volume_type *)lua_newuserdata( L, sizeof( volume_type ) );

  if (vol->vol = vfs_mount( ldrv, num )) {

    luaL_getmetatable(L, "file.vol");
    lua_setmetatable(L, -2);
    return 1;
  } else {

    lua_pop( L, 1 );
    return 0;
  }
}
