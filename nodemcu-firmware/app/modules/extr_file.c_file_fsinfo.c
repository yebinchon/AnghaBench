
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
typedef int lua_State ;


 int NODE_DBG (char*,int,int) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int) ;
 scalar_t__ vfs_fsinfo (char*,int*,int*) ;

__attribute__((used)) static int file_fsinfo( lua_State* L )
{
  u32_t total, used;
  if (vfs_fsinfo("", &total, &used)) {
    return luaL_error(L, "file system failed");
  }
  NODE_DBG("total: %d, used:%d\n", total, used);
  if(total>0x7FFFFFFF || used>0x7FFFFFFF || used > total)
  {
    return luaL_error(L, "file system error");
  }
  lua_pushinteger(L, total-used);
  lua_pushinteger(L, used);
  lua_pushinteger(L, total);
  return 3;
}
