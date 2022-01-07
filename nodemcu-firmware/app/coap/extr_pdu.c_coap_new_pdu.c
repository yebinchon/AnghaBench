
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int len; TYPE_4__* p; } ;
struct TYPE_10__ {int len; TYPE_4__* p; } ;
struct TYPE_9__ {scalar_t__ len; int * p; } ;
struct TYPE_12__ {TYPE_3__ msg; TYPE_2__ scratch; struct TYPE_12__* pkt; TYPE_1__ content; } ;
typedef TYPE_4__ uint8_t ;
typedef TYPE_4__ coap_pdu_t ;
typedef TYPE_4__ coap_packet_t ;


 int MAX_REQUEST_SIZE ;
 int MAX_REQ_SCRATCH_SIZE ;
 int NODE_DBG (char*) ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_4__*) ;

coap_pdu_t * coap_new_pdu(void) {
  coap_pdu_t *pdu = ((void*)0);
  pdu = (coap_pdu_t *)calloc(1,sizeof(coap_pdu_t));
  if(!pdu){
    NODE_DBG("coap_new_pdu malloc error.\n");
    return ((void*)0);
  }

  pdu->scratch.p = (uint8_t *)calloc(1,MAX_REQ_SCRATCH_SIZE);
  if(!pdu->scratch.p){
    NODE_DBG("coap_new_pdu malloc error.\n");
    free(pdu);
    return ((void*)0);
  }
  pdu->scratch.len = MAX_REQ_SCRATCH_SIZE;

  pdu->pkt = (coap_packet_t *)calloc(1,sizeof(coap_packet_t));
  if(!pdu->pkt){
    NODE_DBG("coap_new_pdu malloc error.\n");
    free(pdu->scratch.p);
    free(pdu);
    return ((void*)0);
  }
  pdu->pkt->content.p = ((void*)0);
  pdu->pkt->content.len = 0;

  pdu->msg.p = (uint8_t *)calloc(1,MAX_REQUEST_SIZE+1);
  if(!pdu->msg.p){
    NODE_DBG("coap_new_pdu malloc error.\n");
    free(pdu->pkt);
    free(pdu->scratch.p);
    free(pdu);
    return ((void*)0);
  }
  pdu->msg.len = MAX_REQUEST_SIZE;
  return pdu;
}
