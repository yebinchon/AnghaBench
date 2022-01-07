
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ lnet_userdata ;


 char** NET_TABLES ;



 TYPE_1__* luaL_checkudata (int *,int,char const*) ;
 int lua_isuserdata (int *,int) ;
 scalar_t__ lua_touserdata (int *,int) ;

lnet_userdata *net_get_udata_s( lua_State *L, int stack ) {
  if (!lua_isuserdata(L, stack)) return ((void*)0);
  lnet_userdata *ud = (lnet_userdata *)lua_touserdata(L, stack);
  switch (ud->type) {
    case 130:
    case 129:
    case 128:
      break;
    default: return ((void*)0);
  }
  const char *mt = NET_TABLES[ud->type];
  ud = luaL_checkudata(L, stack, mt);
  return ud;
}
