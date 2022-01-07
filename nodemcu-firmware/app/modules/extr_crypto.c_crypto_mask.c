
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int luaL_addchar (int *,char const) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_checklstring (int *,int,int*) ;
 int luaL_error (int *,char*) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static int crypto_mask( lua_State* L )
{
  int len, mask_len, i;
  const char* msg = luaL_checklstring(L, 1, &len);
  const char* mask = luaL_checklstring(L, 2, &mask_len);
  luaL_Buffer b;

  if(mask_len <= 0)
    return luaL_error(L, "invalid argument: mask");

  luaL_buffinit(L, &b);
  for (i = 0; i < len; i++) {
    luaL_addchar(&b, msg[i] ^ mask[i % mask_len]);
  }

  luaL_pushresult(&b);
  return 1;
}
