
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int coap_tid_t ;
struct TYPE_11__ {scalar_t__ p; } ;
struct TYPE_10__ {scalar_t__ t; int code; } ;
struct TYPE_9__ {scalar_t__ len; int * p; } ;
struct TYPE_12__ {TYPE_3__ payload; TYPE_2__ hdr; TYPE_1__ content; } ;
typedef TYPE_4__ coap_packet_t ;


 int COAP_INVALID_TID ;
 int COAP_RESPONSE_CLASS (int) ;
 scalar_t__ COAP_TYPE_CON ;
 scalar_t__ COAP_TYPE_NONCON ;
 scalar_t__ COAP_TYPE_RESET ;
 int NODE_DBG (char*,...) ;
 int check_token (TYPE_4__*) ;
 int coap_dumpPacket (TYPE_4__*) ;
 int coap_parse (TYPE_4__*,char*,unsigned short) ;
 int coap_remove_node (int *,int ) ;
 int coap_timer_start (int *) ;
 int coap_timer_stop () ;
 int coap_timer_update (int *) ;
 int coap_transaction_id (int const,int const,TYPE_4__*,int *) ;
 int gQueue ;

void coap_client_response_handler(char *data, unsigned short len, unsigned short size, const uint32_t ip, const uint32_t port)
{
  NODE_DBG("coap_client_response_handler is called.\n");
  coap_packet_t pkt;
  pkt.content.p = ((void*)0);
  pkt.content.len = 0;
  int rc;

  if (0 != (rc = coap_parse(&pkt, data, len))){
    NODE_DBG("Bad packet rc=%d\n", rc);
  }
  else
  {




    if (!check_token(&pkt)) {

      if (pkt.hdr.t == COAP_TYPE_CON || pkt.hdr.t == COAP_TYPE_NONCON){


      }
      goto end;
    }

    if (pkt.hdr.t == COAP_TYPE_RESET) {
      NODE_DBG("got RST\n");
      goto end;
    }

    coap_tid_t id = COAP_INVALID_TID;
    coap_transaction_id(ip, port, &pkt, &id);


    coap_timer_stop();

    coap_remove_node(&gQueue, id);

    coap_timer_update(&gQueue);
    coap_timer_start(&gQueue);

    if (COAP_RESPONSE_CLASS(pkt.hdr.code) == 2)
    {

      NODE_DBG("%d.%02d\t", (pkt.hdr.code >> 5), pkt.hdr.code & 0x1F);
      NODE_DBG((char *)(pkt.payload.p));
    }
    else if (COAP_RESPONSE_CLASS(pkt.hdr.code) >= 4)
    {
      NODE_DBG("%d.%02d\t", (pkt.hdr.code >> 5), pkt.hdr.code & 0x1F);
      NODE_DBG((char *)(pkt.payload.p));
    }
  }

end:
  if(!gQueue){

  }
}
