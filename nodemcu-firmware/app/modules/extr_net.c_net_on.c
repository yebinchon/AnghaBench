
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int cb_connect_ref; int cb_disconnect_ref; int cb_reconnect_ref; int cb_dns_ref; int cb_receive_ref; int cb_sent_ref; } ;
struct TYPE_5__ {int type; TYPE_1__ client; } ;
typedef TYPE_2__ lnet_userdata ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;

 int TYPE_TCP_SERVER ;

 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*) ;
 int luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,int) ;
 scalar_t__ lua_isfunction (int *,int) ;
 scalar_t__ lua_islightfunction (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pushvalue (int *,int) ;
 TYPE_2__* net_get_udata (int *) ;
 int strcmp (char*,char const*) ;

int net_on( lua_State *L ) {
  lnet_userdata *ud = net_get_udata(L);
  if (!ud || ud->type == TYPE_TCP_SERVER)
    return luaL_error(L, "invalid user data");
  int *refptr = ((void*)0);
  const char *name = luaL_checkstring(L, 2);
  if (!name) return luaL_error(L, "need callback name");
  switch (ud->type) {
    case 129:
      if (strcmp("connection",name)==0)
        { refptr = &ud->client.cb_connect_ref; break; }
      if (strcmp("disconnection",name)==0)
        { refptr = &ud->client.cb_disconnect_ref; break; }
      if (strcmp("reconnection",name)==0)
        { refptr = &ud->client.cb_reconnect_ref; break; }
    case 128:
      if (strcmp("dns",name)==0)
        { refptr = &ud->client.cb_dns_ref; break; }
      if (strcmp("receive",name)==0)
        { refptr = &ud->client.cb_receive_ref; break; }
      if (strcmp("sent",name)==0)
        { refptr = &ud->client.cb_sent_ref; break; }
      break;
    default: return luaL_error(L, "invalid user data");
  }
  if (refptr == ((void*)0))
    return luaL_error(L, "invalid callback name");
  if (lua_isfunction(L, 3) || lua_islightfunction(L, 3)) {
    lua_pushvalue(L, 3);
    luaL_unref(L, LUA_REGISTRYINDEX, *refptr);
    *refptr = luaL_ref(L, LUA_REGISTRYINDEX);
  } else if (lua_isnil(L, 3)) {
    luaL_unref(L, LUA_REGISTRYINDEX, *refptr);
    *refptr = LUA_NOREF;
  } else {
    return luaL_error(L, "invalid callback function");
  }
  return 0;
}
