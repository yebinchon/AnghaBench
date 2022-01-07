
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lua_State ;
struct TYPE_4__ {int digest_size; } ;
typedef TYPE_1__ digest_mech_info_t ;
typedef int digest ;


 int bad_mech (int *) ;
 int bad_mem (int *) ;
 TYPE_1__* crypto_digest_mech (int ) ;
 scalar_t__ crypto_hash (TYPE_1__ const*,char const*,size_t,int *) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_checkstring (int *,int) ;
 int lua_pushlstring (int *,int *,int) ;

__attribute__((used)) static int crypto_lhash (lua_State *L)
{
  const digest_mech_info_t *mi = crypto_digest_mech (luaL_checkstring (L, 1));
  if (!mi)
    return bad_mech (L);
  size_t len = 0;
  const char *data = luaL_checklstring (L, 2, &len);

  uint8_t digest[mi->digest_size];
  if (crypto_hash (mi, data, len, digest) != 0)
    return bad_mem (L);

  lua_pushlstring (L, digest, sizeof (digest));
  return 1;
}
