
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int scratch_raw ;
struct TYPE_11__ {int member_1; int * member_0; } ;
typedef TYPE_2__ coap_rw_buffer_t ;
struct TYPE_10__ {scalar_t__ len; int * p; } ;
struct TYPE_12__ {TYPE_1__ content; } ;
typedef TYPE_3__ coap_packet_t ;


 int NODE_DBG (char*,...) ;
 int coap_build (char*,size_t*,TYPE_3__*) ;
 int coap_dump (char*,size_t,int) ;
 int coap_dumpPacket (TYPE_3__*) ;
 int coap_handle_req (TYPE_2__*,TYPE_3__*,TYPE_3__*) ;
 int coap_parse (TYPE_3__*,char*,unsigned short) ;
 int free (int *) ;

size_t coap_server_respond(char *req, unsigned short reqlen, char *rsp, unsigned short rsplen)
{
  NODE_DBG("coap_server_respond is called.\n");
  size_t rlen = rsplen;
  coap_packet_t pkt;
  pkt.content.p = ((void*)0);
  pkt.content.len = 0;
  uint8_t scratch_raw[4];
  coap_rw_buffer_t scratch_buf = {scratch_raw, sizeof(scratch_raw)};
  int rc;







  if (0 != (rc = coap_parse(&pkt, req, reqlen))){
    NODE_DBG("Bad packet rc=%d\n", rc);
    return 0;
  }
  else
  {
    coap_packet_t rsppkt;
    rsppkt.content.p = ((void*)0);
    rsppkt.content.len = 0;



    coap_handle_req(&scratch_buf, &pkt, &rsppkt);
    if (0 != (rc = coap_build(rsp, &rlen, &rsppkt))){
      NODE_DBG("coap_build failed rc=%d\n", rc);

      rlen = 0;
    }
    else
    {
    }
    if(rsppkt.content.p){
      free(rsppkt.content.p);
      rsppkt.content.p = ((void*)0);
      rsppkt.content.len = 0;
    }
    return rlen;
  }
}
