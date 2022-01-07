
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int hdr; int payload; int numopts; int opts; int tok; } ;
typedef TYPE_1__ coap_packet_t ;


 int MAXOPT ;
 int coap_parseHeader (int *,int const*,size_t) ;
 int coap_parseOptionsAndPayload (int ,int *,int *,int *,int const*,size_t) ;
 int coap_parseToken (int *,int *,int const*,size_t) ;

int coap_parse(coap_packet_t *pkt, const uint8_t *buf, size_t buflen)
{
    int rc;



    if (0 != (rc = coap_parseHeader(&pkt->hdr, buf, buflen)))
        return rc;

    if (0 != (rc = coap_parseToken(&pkt->tok, &pkt->hdr, buf, buflen)))
        return rc;
    pkt->numopts = MAXOPT;
    if (0 != (rc = coap_parseOptionsAndPayload(pkt->opts, &(pkt->numopts), &(pkt->payload), &pkt->hdr, buf, buflen)))
        return rc;

    return 0;
}
