
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct netif* netif; struct pbuf* p; } ;
struct TYPE_4__ {TYPE_1__ inp; } ;
struct tcpip_msg {TYPE_2__ msg; int type; } ;
struct pbuf {int dummy; } ;
struct netif {int flags; } ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_MEM ;
 scalar_t__ ERR_OK ;
 scalar_t__ ERR_VAL ;
 int LOCK_TCPIP_CORE () ;
 int LWIP_DEBUGF (int ,char*) ;
 int MEMP_TCPIP_MSG_INPKT ;
 int NETIF_FLAG_ETHARP ;
 int NETIF_FLAG_ETHERNET ;
 int TCPIP_DEBUG ;
 int TCPIP_MSG_INPKT ;
 int UNLOCK_TCPIP_CORE () ;
 scalar_t__ ethernet_input (struct pbuf*,struct netif*) ;
 scalar_t__ ip_input (struct pbuf*,struct netif*) ;
 int mbox ;
 int memp_free (int ,struct tcpip_msg*) ;
 scalar_t__ memp_malloc (int ) ;
 scalar_t__ sys_mbox_trypost (int *,struct tcpip_msg*) ;
 scalar_t__ sys_mbox_valid (int *) ;

err_t
tcpip_input(struct pbuf *p, struct netif *inp)
{
  struct tcpip_msg *msg;

  if (sys_mbox_valid(&mbox)) {
    msg = (struct tcpip_msg *)memp_malloc(MEMP_TCPIP_MSG_INPKT);
    if (msg == ((void*)0)) {
      return ERR_MEM;
    }

    msg->type = TCPIP_MSG_INPKT;
    msg->msg.inp.p = p;
    msg->msg.inp.netif = inp;
    if (sys_mbox_trypost(&mbox, msg) != ERR_OK) {
      memp_free(MEMP_TCPIP_MSG_INPKT, msg);
      return ERR_MEM;
    }
    return ERR_OK;
  }
  return ERR_VAL;

}
