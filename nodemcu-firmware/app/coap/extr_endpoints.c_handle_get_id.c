
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int coap_rw_buffer_t ;
struct TYPE_5__ {int tok; } ;
typedef TYPE_1__ coap_packet_t ;
typedef int coap_endpoint_t ;


 int COAP_CONTENTTYPE_TEXT_PLAIN ;
 int COAP_RSPCODE_CONTENT ;
 int coap_make_response (int *,TYPE_1__*,int const*,int,int ,int ,int *,int ,int ) ;
 int id ;
 int system_get_chip_id () ;

__attribute__((used)) static int handle_get_id(const coap_endpoint_t *ep, coap_rw_buffer_t *scratch, const coap_packet_t *inpkt, coap_packet_t *outpkt, uint8_t id_hi, uint8_t id_lo)
{
    id = system_get_chip_id();
    return coap_make_response(scratch, outpkt, (const uint8_t *)(&id), sizeof(uint32_t), id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_CONTENT, COAP_CONTENTTYPE_TEXT_PLAIN);
}
