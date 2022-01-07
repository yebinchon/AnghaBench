
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_13__ {int retransmit_cnt; int t; int timeout; scalar_t__ id; TYPE_5__* pdu; int pconn; } ;
typedef TYPE_3__ coap_queue_t ;
struct TYPE_14__ {TYPE_2__* pkt; } ;
struct TYPE_11__ {scalar_t__* id; } ;
struct TYPE_12__ {TYPE_1__ hdr; } ;


 int COAP_DEFAULT_MAX_RETRANSMIT ;
 scalar_t__ COAP_INVALID_TID ;
 int NODE_DBG (char*,...) ;
 int coap_delete_node (TYPE_3__*) ;
 int coap_insert_node (TYPE_3__**,TYPE_3__*) ;
 TYPE_3__* coap_pop_next (TYPE_3__**) ;
 scalar_t__ coap_send (int ,TYPE_5__*) ;
 int coap_timer_start (TYPE_3__**) ;

void coap_timer_tick(void *arg){
  if( !arg )
    return;
  coap_queue_t **queue = (coap_queue_t **)arg;
  if( !(*queue) )
    return;

  coap_queue_t *node = coap_pop_next( queue );

  if (node->retransmit_cnt < COAP_DEFAULT_MAX_RETRANSMIT) {
    node->retransmit_cnt++;
    node->t = node->timeout << node->retransmit_cnt;

    NODE_DBG("** retransmission #%d of transaction %d\n",
        node->retransmit_cnt, (((uint16_t)(node->pdu->pkt->hdr.id[0]))<<8)+node->pdu->pkt->hdr.id[1]);
    node->id = coap_send(node->pconn, node->pdu);
    if (COAP_INVALID_TID == node->id) {
      NODE_DBG("retransmission: error sending pdu\n");
      coap_delete_node(node);
    } else {
      coap_insert_node(queue, node);
    }
  } else {

    coap_delete_node( node );
  }

  coap_timer_start(queue);
}
