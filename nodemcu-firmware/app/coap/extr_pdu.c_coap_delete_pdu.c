
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; TYPE_3__* p; } ;
struct TYPE_7__ {scalar_t__ len; TYPE_3__* p; } ;
struct TYPE_8__ {TYPE_1__ msg; struct TYPE_8__* pkt; TYPE_2__ scratch; } ;
typedef TYPE_3__ coap_pdu_t ;


 int free (TYPE_3__*) ;

void coap_delete_pdu(coap_pdu_t *pdu){
  if(!pdu)
    return;

  if(pdu->scratch.p){
    free(pdu->scratch.p);
    pdu->scratch.p = ((void*)0);
    pdu->scratch.len = 0;
  }

  if(pdu->pkt){
    free(pdu->pkt);
    pdu->pkt = ((void*)0);
  }

  if(pdu->msg.p){
    free(pdu->msg.p);
    pdu->msg.p = ((void*)0);
    pdu->msg.len = 0;
  }

  free(pdu);
  pdu = ((void*)0);
}
