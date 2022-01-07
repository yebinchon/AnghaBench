
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * vol; } ;
typedef TYPE_1__ volume_type ;
typedef int lua_State ;


 int luaL_argcheck (int *,TYPE_1__*,int,char*) ;
 TYPE_1__* luaL_checkudata (int *,int,char*) ;
 int lua_pushboolean (int *,int) ;
 scalar_t__ vfs_umount (int *) ;

__attribute__((used)) static int file_vol_umount( lua_State *L )
{
  volume_type *vol = luaL_checkudata( L, 1, "file.vol" );
  luaL_argcheck( L, vol, 1, "volume expected" );

  lua_pushboolean( L, 0 <= vfs_umount( vol->vol ) );


  vol->vol = ((void*)0);
  return 1;
}
