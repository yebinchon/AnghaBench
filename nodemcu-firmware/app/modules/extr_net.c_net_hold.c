
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int hold; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ client; scalar_t__ tcp_pcb; } ;
typedef TYPE_2__ lnet_userdata ;


 scalar_t__ TYPE_TCP_CLIENT ;
 int luaL_error (int *,char*) ;
 TYPE_2__* net_get_udata (int *) ;

int net_hold( lua_State *L ) {
  lnet_userdata *ud = net_get_udata(L);
  if (!ud || ud->type != TYPE_TCP_CLIENT)
    return luaL_error(L, "invalid user data");
  if (!ud->client.hold && ud->tcp_pcb) {
 ud->client.hold = 1;
  }
  return 0;
}
