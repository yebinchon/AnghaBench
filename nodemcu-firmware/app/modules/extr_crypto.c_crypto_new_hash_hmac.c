
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char uint8_t ;
typedef int lua_State ;
struct TYPE_5__ {char* k_opad; void* ctx; TYPE_2__ const* mech_info; } ;
typedef TYPE_1__ digest_user_datum_t ;
struct TYPE_6__ {size_t block_size; int ctx_size; int (* create ) (void*) ;} ;
typedef TYPE_2__ digest_mech_info_t ;


 int WANT_HMAC ;
 int bad_mech (int *) ;
 TYPE_2__* crypto_digest_mech (int ) ;
 int crypto_hmac_begin (void*,TYPE_2__ const*,char const*,size_t,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_checkstring (int *,int) ;
 int luaL_getmetatable (int *,char*) ;
 scalar_t__ lua_newuserdata (int *,size_t) ;
 int lua_setmetatable (int *,int) ;
 int stub1 (void*) ;

__attribute__((used)) static int crypto_new_hash_hmac (lua_State *L, int what)
{


  const digest_mech_info_t *mi = crypto_digest_mech (luaL_checkstring (L, 1));
  if (!mi)
    return bad_mech (L);

  size_t len = 0, k_opad_len = 0, udlen;
  const char *key = ((void*)0);
  uint8_t *k_opad = ((void*)0);

  if (what == WANT_HMAC)
  {
    key = luaL_checklstring (L, 2, &len);
    k_opad_len = mi->block_size;
  }




  udlen = sizeof(digest_user_datum_t) + mi->ctx_size + k_opad_len;
  digest_user_datum_t *dudat = (digest_user_datum_t *)lua_newuserdata(L, udlen);
  luaL_getmetatable(L, "crypto.hash");
  lua_setmetatable(L, -2);

  void *ctx = dudat + 1;
  mi->create (ctx);

  if (what == WANT_HMAC) {

    k_opad = (char *)ctx + mi->ctx_size;
    crypto_hmac_begin (ctx, mi, key, len, k_opad);
  }


  dudat->mech_info = mi;
  dudat->ctx = ctx;
  dudat->k_opad = k_opad;

  return 1;
}
