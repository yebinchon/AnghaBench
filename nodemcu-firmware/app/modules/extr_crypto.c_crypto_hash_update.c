
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int ctx; TYPE_2__* mech_info; } ;
typedef TYPE_1__ digest_user_datum_t ;
struct TYPE_4__ {int (* update ) (int ,char const*,size_t) ;} ;
typedef TYPE_2__ digest_mech_info_t ;


 int NODE_DBG (char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int stub1 (int ,char const*,size_t) ;

__attribute__((used)) static int crypto_hash_update (lua_State *L)
{
  NODE_DBG("enter crypto_hash_update.\n");
  digest_user_datum_t *dudat;
  size_t sl;

  dudat = (digest_user_datum_t *)luaL_checkudata(L, 1, "crypto.hash");

  const digest_mech_info_t *mi = dudat->mech_info;

  size_t len = 0;
  const char *data = luaL_checklstring (L, 2, &len);

  mi->update (dudat->ctx, data, len);

  return 0;
}
