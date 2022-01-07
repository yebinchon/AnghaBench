
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {scalar_t__ hold; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_3__* tcp_pcb; TYPE_1__ client; } ;
typedef TYPE_2__ lnet_userdata ;
struct TYPE_7__ {int flags; } ;


 int TCP_WND ;
 int TF_ACK_NOW ;
 scalar_t__ TYPE_TCP_CLIENT ;
 int luaL_error (int *,char*) ;
 TYPE_2__* net_get_udata (int *) ;
 int tcp_recved (TYPE_3__*,int ) ;

int net_unhold( lua_State *L ) {
  lnet_userdata *ud = net_get_udata(L);
  if (!ud || ud->type != TYPE_TCP_CLIENT)
    return luaL_error(L, "invalid user data");
  if (ud->client.hold && ud->tcp_pcb) {
 ud->client.hold = 0;
 ud->tcp_pcb->flags |= TF_ACK_NOW;
    tcp_recved(ud->tcp_pcb, TCP_WND);
  }
  return 0;
}
