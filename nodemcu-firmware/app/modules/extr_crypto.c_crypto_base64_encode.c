
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int* bytes64 ;
 int luaL_addchar (int *,int) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_checklstring (int *,int,int*) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static int crypto_base64_encode( lua_State* L )
{
  int len, i;
  const char* msg = luaL_checklstring(L, 1, &len);
  luaL_Buffer out;

  luaL_buffinit(L, &out);
  for (i = 0; i < len; i += 3) {
    int a = msg[i];
    int b = (i + 1 < len) ? msg[i + 1] : 0;
    int c = (i + 2 < len) ? msg[i + 2] : 0;
    luaL_addchar(&out, bytes64[a >> 2]);
    luaL_addchar(&out, bytes64[((a & 3) << 4) | (b >> 4)]);
    luaL_addchar(&out, (i + 1 < len) ? bytes64[((b & 15) << 2) | (c >> 6)] : 61);
    luaL_addchar(&out, (i + 2 < len) ? bytes64[(c & 63)] : 61);
  }
  luaL_pushresult(&out);
  return 1;
}
