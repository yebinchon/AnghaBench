
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__* udp_pcb; int pcb; } ;
typedef TYPE_2__ lnet_userdata ;
struct TYPE_4__ {int ttl; } ;


 scalar_t__ TYPE_TCP_SERVER ;
 int luaL_error (int *,char*) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_pushinteger (int *,int) ;
 TYPE_2__* net_get_udata (int *) ;

int net_ttl( lua_State *L ) {
  lnet_userdata *ud = net_get_udata(L);
  if (!ud || ud->type == TYPE_TCP_SERVER)
    return luaL_error(L, "invalid user data");
  if (!ud->pcb)
    return luaL_error(L, "socket is not open/bound yet");
  int ttl = luaL_optinteger(L, 2, -1);




  if (ttl == -1) {
    ttl = ud->udp_pcb->ttl;
  } else {
    ud->udp_pcb->ttl = ttl;
  }
  lua_pushinteger(L, ttl);
  return 1;
}
