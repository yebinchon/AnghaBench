
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;
typedef int SHA1_CTX ;


 int SHA1Final (int *,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,char const*,int) ;
 char* luaL_checklstring (int *,int,int*) ;
 int lua_pushlstring (int *,int *,int) ;

__attribute__((used)) static int crypto_sha1( lua_State* L )
{
  SHA1_CTX ctx;
  uint8_t digest[20];

  int len;
  const char* msg = luaL_checklstring(L, 1, &len);

  SHA1Init(&ctx);
  SHA1Update(&ctx, msg, len);
  SHA1Final(digest, &ctx);


  lua_pushlstring(L, digest, 20);
  return 1;
}
