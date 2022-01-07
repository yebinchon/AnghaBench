
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcp_pcb {int dummy; } ;
struct pbuf {int dummy; } ;
struct TYPE_4__ {scalar_t__ hold; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ self_ref; TYPE_1__ client; int pcb; } ;
typedef TYPE_2__ lnet_userdata ;
typedef int err_t ;


 int ERR_ABRT ;
 int ERR_OK ;
 scalar_t__ LUA_NOREF ;
 int TCP_WND ;
 scalar_t__ TYPE_TCP_CLIENT ;
 int net_err_cb (void*,int ) ;
 int net_recv_cb (TYPE_2__*,struct pbuf*,int ,int ) ;
 int tcp_close (struct tcp_pcb*) ;
 int tcp_recved (struct tcp_pcb*,int ) ;

__attribute__((used)) static err_t net_tcp_recv_cb(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err) {
  lnet_userdata *ud = (lnet_userdata*)arg;
  if (!ud || !ud->pcb || ud->type != TYPE_TCP_CLIENT || ud->self_ref == LUA_NOREF)
    return ERR_ABRT;
  if (!p) {
    net_err_cb(arg, err);
    return tcp_close(tpcb);
  }
  net_recv_cb(ud, p, 0, 0);
  tcp_recved(tpcb, ud->client.hold ? 0 : TCP_WND);
  return ERR_OK;
}
