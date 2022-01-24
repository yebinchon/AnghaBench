#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_13__ {int retransmit_cnt; int t; int timeout; scalar_t__ id; TYPE_5__* pdu; int /*<<< orphan*/  pconn; } ;
typedef  TYPE_3__ coap_queue_t ;
struct TYPE_14__ {TYPE_2__* pkt; } ;
struct TYPE_11__ {scalar_t__* id; } ;
struct TYPE_12__ {TYPE_1__ hdr; } ;

/* Variables and functions */
 int COAP_DEFAULT_MAX_RETRANSMIT ; 
 scalar_t__ COAP_INVALID_TID ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**,TYPE_3__*) ; 
 TYPE_3__* FUNC3 (TYPE_3__**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**) ; 

void FUNC6(void *arg){
  if( !arg )
    return;
  coap_queue_t **queue = (coap_queue_t **)arg;
  if( !(*queue) )
    return;

  coap_queue_t *node = FUNC3( queue );
  /* re-initialize timeout when maximum number of retransmissions are not reached yet */
  if (node->retransmit_cnt < COAP_DEFAULT_MAX_RETRANSMIT) {
    node->retransmit_cnt++;
    node->t = node->timeout << node->retransmit_cnt;

    FUNC0("** retransmission #%d of transaction %d\n",
        node->retransmit_cnt, (((uint16_t)(node->pdu->pkt->hdr.id[0]))<<8)+node->pdu->pkt->hdr.id[1]);
    node->id = FUNC4(node->pconn, node->pdu);
    if (COAP_INVALID_TID == node->id) {
      FUNC0("retransmission: error sending pdu\n");
      FUNC1(node);
    } else {
      FUNC2(queue, node);
    }
  } else {
    /* And finally delete the node */
    FUNC1( node );
  }

  FUNC5(queue);
}