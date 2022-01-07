
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int crypto_encdec (int *,int) ;

__attribute__((used)) static int lcrypto_decrypt (lua_State *L)
{
  return crypto_encdec (L, 0);
}
