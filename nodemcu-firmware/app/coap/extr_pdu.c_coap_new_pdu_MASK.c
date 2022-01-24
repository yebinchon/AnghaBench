#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int len; TYPE_4__* p; } ;
struct TYPE_10__ {int len; TYPE_4__* p; } ;
struct TYPE_9__ {scalar_t__ len; int /*<<< orphan*/ * p; } ;
struct TYPE_12__ {TYPE_3__ msg; TYPE_2__ scratch; struct TYPE_12__* pkt; TYPE_1__ content; } ;
typedef  TYPE_4__ uint8_t ;
typedef  TYPE_4__ coap_pdu_t ;
typedef  TYPE_4__ coap_packet_t ;

/* Variables and functions */
 int MAX_REQUEST_SIZE ; 
 int MAX_REQ_SCRATCH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

coap_pdu_t * FUNC3(void) {
  coap_pdu_t *pdu = NULL;
  pdu = (coap_pdu_t *)FUNC1(1,sizeof(coap_pdu_t));
  if(!pdu){
    FUNC0("coap_new_pdu malloc error.\n");
    return NULL;
  }

  pdu->scratch.p = (uint8_t *)FUNC1(1,MAX_REQ_SCRATCH_SIZE);
  if(!pdu->scratch.p){
    FUNC0("coap_new_pdu malloc error.\n");
    FUNC2(pdu);
    return NULL;
  }
  pdu->scratch.len = MAX_REQ_SCRATCH_SIZE;

  pdu->pkt = (coap_packet_t *)FUNC1(1,sizeof(coap_packet_t));
  if(!pdu->pkt){
    FUNC0("coap_new_pdu malloc error.\n");
    FUNC2(pdu->scratch.p);
    FUNC2(pdu);
    return NULL;
  }
  pdu->pkt->content.p = NULL;
  pdu->pkt->content.len = 0;

  pdu->msg.p = (uint8_t *)FUNC1(1,MAX_REQUEST_SIZE+1); // +1 for string '\0'
  if(!pdu->msg.p){
    FUNC0("coap_new_pdu malloc error.\n");
    FUNC2(pdu->pkt);
    FUNC2(pdu->scratch.p);
    FUNC2(pdu);
    return NULL;
  }
  pdu->msg.len = MAX_REQUEST_SIZE;
  return pdu;
}