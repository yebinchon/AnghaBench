
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_time ;
typedef int sint32_t ;
typedef int lua_State ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TTABLE ;
 int VFS_RES_ERR ;
 int VFS_RES_OK ;
 int lua_call (int *,int ,int) ;
 int * lua_getstate () ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 scalar_t__ lua_type (int *,int ) ;
 scalar_t__ rtc_cb_ref ;
 int table2tm (int *,int *) ;

__attribute__((used)) static sint32_t file_rtc_cb( vfs_time *tm )
{
  sint32_t res = VFS_RES_ERR;

  if (rtc_cb_ref != LUA_NOREF) {
    lua_State *L = lua_getstate();

    lua_rawgeti( L, LUA_REGISTRYINDEX, rtc_cb_ref );
    lua_call( L, 0, 1 );

    if (lua_type( L, lua_gettop( L ) ) == LUA_TTABLE) {
      table2tm( L, tm );
      res = VFS_RES_OK;
    }


    lua_pop( L, 1 );
  }

  return res;
}
