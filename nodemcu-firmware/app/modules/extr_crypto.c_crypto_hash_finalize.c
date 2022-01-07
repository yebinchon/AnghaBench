
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lua_State ;
struct TYPE_4__ {int ctx; scalar_t__ k_opad; TYPE_2__* mech_info; } ;
typedef TYPE_1__ digest_user_datum_t ;
struct TYPE_5__ {int digest_size; int (* finalize ) (int *,int ) ;} ;
typedef TYPE_2__ digest_mech_info_t ;
typedef int digest ;


 int NODE_DBG (char*) ;
 int crypto_hmac_finalize (int ,TYPE_2__ const*,scalar_t__,int *) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_pushlstring (int *,int *,int) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static int crypto_hash_finalize (lua_State *L)
{
  NODE_DBG("enter crypto_hash_update.\n");
  digest_user_datum_t *dudat;
  size_t sl;

  dudat = (digest_user_datum_t *)luaL_checkudata(L, 1, "crypto.hash");

  const digest_mech_info_t *mi = dudat->mech_info;

  uint8_t digest[mi->digest_size];
  if (dudat->k_opad)
    crypto_hmac_finalize (dudat->ctx, mi, dudat->k_opad, digest);
  else
    mi->finalize (digest, dudat->ctx);

  lua_pushlstring (L, digest, sizeof (digest));
  return 1;
}
