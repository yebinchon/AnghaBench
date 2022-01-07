
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int coap_rw_buffer_t ;
struct TYPE_6__ {int * p; int len; } ;
struct TYPE_7__ {int tok; TYPE_1__ content; } ;
typedef TYPE_2__ coap_packet_t ;
typedef int coap_endpoint_t ;


 int COAP_CONTENTTYPE_APPLICATION_LINKFORMAT ;
 int COAP_ERR_BUFFER_TOO_SMALL ;
 int COAP_RSPCODE_CONTENT ;
 int MAX_PAYLOAD_SIZE ;
 int NODE_DBG (char*) ;
 int build_well_known_rsp (int *,int ) ;
 scalar_t__ calloc (int,int ) ;
 int coap_make_response (int *,TYPE_2__*,int const*,int ,int ,int ,int *,int ,int ) ;
 int strlen (int *) ;

__attribute__((used)) static int handle_get_well_known_core(const coap_endpoint_t *ep, coap_rw_buffer_t *scratch, const coap_packet_t *inpkt, coap_packet_t *outpkt, uint8_t id_hi, uint8_t id_lo)
{
    outpkt->content.p = (uint8_t *)calloc(1,MAX_PAYLOAD_SIZE);
    if(outpkt->content.p == ((void*)0)){
        NODE_DBG("not enough memory\n");
        return COAP_ERR_BUFFER_TOO_SMALL;
    }
    outpkt->content.len = MAX_PAYLOAD_SIZE;
    build_well_known_rsp(outpkt->content.p, outpkt->content.len);
    return coap_make_response(scratch, outpkt, (const uint8_t *)outpkt->content.p, strlen(outpkt->content.p), id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_CONTENT, COAP_CONTENTTYPE_APPLICATION_LINKFORMAT);
}
