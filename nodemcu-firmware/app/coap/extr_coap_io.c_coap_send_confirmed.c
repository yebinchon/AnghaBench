
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct espconn {int dummy; } ;
typedef scalar_t__ coap_tid_t ;
typedef int coap_tick_t ;
struct TYPE_5__ {scalar_t__ id; int timeout; int t; int * pdu; struct espconn* pconn; scalar_t__ retransmit_cnt; } ;
typedef TYPE_1__ coap_queue_t ;
typedef int coap_pdu_t ;


 int COAP_DEFAULT_RESPONSE_TIMEOUT ;
 scalar_t__ COAP_INVALID_TID ;
 int COAP_TICKS_PER_SECOND ;
 int NODE_DBG (char*) ;
 int coap_free_node (TYPE_1__*) ;
 int coap_insert_node (int *,TYPE_1__*) ;
 TYPE_1__* coap_new_node () ;
 scalar_t__ coap_send (struct espconn*,int *) ;
 int coap_timer_start (int *) ;
 int coap_timer_stop () ;
 int coap_timer_update (int *) ;
 int gQueue ;
 int rand () ;

coap_tid_t coap_send_confirmed(struct espconn *pesp_conn, coap_pdu_t *pdu) {
  coap_queue_t *node;
  coap_tick_t diff;
  uint32_t r;

  node = coap_new_node();
  if (!node) {
    NODE_DBG("coap_send_confirmed: insufficient memory\n");
    return COAP_INVALID_TID;
  }

  node->retransmit_cnt = 0;
  node->id = coap_send(pesp_conn, pdu);
  if (COAP_INVALID_TID == node->id) {
    NODE_DBG("coap_send_confirmed: error sending pdu\n");
    coap_free_node(node);
    return COAP_INVALID_TID;
  }
  r = rand();


  node->timeout = COAP_DEFAULT_RESPONSE_TIMEOUT * COAP_TICKS_PER_SECOND +
    (COAP_DEFAULT_RESPONSE_TIMEOUT >> 1) *
    ((COAP_TICKS_PER_SECOND * (r & 0xFF)) >> 8);

  node->pconn = pesp_conn;
  node->pdu = pdu;
  coap_timer_stop();
  coap_timer_update(&gQueue);
  node->t = node->timeout;
  coap_insert_node(&gQueue, node);
  coap_timer_start(&gQueue);
  return node->id;
}
