
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {TYPE_3__* udp; TYPE_2__* tcp; } ;
struct espconn {scalar_t__ type; TYPE_4__ proto; } ;
typedef int ip ;
typedef int coap_tid_t ;
struct TYPE_7__ {int len; scalar_t__ p; } ;
struct TYPE_11__ {int pkt; TYPE_1__ msg; } ;
typedef TYPE_5__ coap_pdu_t ;
struct TYPE_9__ {int remote_port; int remote_ip; } ;
struct TYPE_8__ {int remote_port; int remote_ip; } ;


 int COAP_INVALID_TID ;
 scalar_t__ ESPCONN_TCP ;
 int coap_transaction_id (int ,int ,int ,int *) ;
 int espconn_sent (struct espconn*,unsigned char*,int ) ;
 int memcpy (int *,int ,int) ;

coap_tid_t coap_send(struct espconn *pesp_conn, coap_pdu_t *pdu) {
  coap_tid_t id = COAP_INVALID_TID;
  uint32_t ip = 0, port = 0;
  if ( !pesp_conn || !pdu )
    return id;

  espconn_sent(pesp_conn, (unsigned char *)(pdu->msg.p), pdu->msg.len);

  if(pesp_conn->type == ESPCONN_TCP){
    memcpy(&ip, pesp_conn->proto.tcp->remote_ip, sizeof(ip));
    port = pesp_conn->proto.tcp->remote_port;
  }else{
    memcpy(&ip, pesp_conn->proto.udp->remote_ip, sizeof(ip));
    port = pesp_conn->proto.udp->remote_port;
  }
  coap_transaction_id(ip, port, pdu->pkt, &id);
  return id;
}
