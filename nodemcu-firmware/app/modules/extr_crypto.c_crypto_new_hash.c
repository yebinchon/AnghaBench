
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int WANT_HASH ;
 int crypto_new_hash_hmac (int *,int ) ;

__attribute__((used)) static int crypto_new_hash (lua_State *L)
{
  return crypto_new_hash_hmac (L, WANT_HASH);
}
