
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {void* cb_accept_ref; } ;
struct TYPE_5__ {void* cb_sent_ref; void* cb_receive_ref; void* cb_dns_ref; int wait_dns; int hold; void* cb_disconnect_ref; void* cb_reconnect_ref; void* cb_connect_ref; } ;
struct TYPE_7__ {int type; TYPE_2__ server; TYPE_1__ client; int * pcb; void* self_ref; } ;
typedef TYPE_3__ lnet_userdata ;
typedef enum net_type { ____Placeholder_net_type } net_type ;


 void* LUA_NOREF ;
 char** NET_TABLES ;



 int luaL_getmetatable (int *,char const*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;

lnet_userdata *net_create( lua_State *L, enum net_type type ) {
  const char *mt = NET_TABLES[type];
  lnet_userdata *ud = (lnet_userdata *)lua_newuserdata(L, sizeof(lnet_userdata));
  if (!ud) return ((void*)0);
  luaL_getmetatable(L, mt);
  lua_setmetatable(L, -2);

  ud->type = type;
  ud->self_ref = LUA_NOREF;
  ud->pcb = ((void*)0);

  switch (type) {
    case 130:
      ud->client.cb_connect_ref = LUA_NOREF;
      ud->client.cb_reconnect_ref = LUA_NOREF;
      ud->client.cb_disconnect_ref = LUA_NOREF;
      ud->client.hold = 0;
    case 128:
      ud->client.wait_dns = 0;
      ud->client.cb_dns_ref = LUA_NOREF;
      ud->client.cb_receive_ref = LUA_NOREF;
      ud->client.cb_sent_ref = LUA_NOREF;
      break;
    case 129:
      ud->server.cb_accept_ref = LUA_NOREF;
      break;
  }
  return ud;
}
