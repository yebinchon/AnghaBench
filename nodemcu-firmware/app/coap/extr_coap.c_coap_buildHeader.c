
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int ver; int t; int tkl; int code; int* id; } ;
typedef TYPE_1__ coap_header_t ;


 int COAP_ERR_BUFFER_TOO_SMALL ;

int coap_buildHeader(const coap_header_t *hdr, uint8_t *buf, size_t buflen)
{

    if (buflen < 4)
        return COAP_ERR_BUFFER_TOO_SMALL;

    buf[0] = (hdr->ver & 0x03) << 6;
    buf[0] |= (hdr->t & 0x03) << 4;
    buf[0] |= (hdr->tkl & 0x0F);
    buf[1] = hdr->code;
    buf[2] = hdr->id[0];
    buf[3] = hdr->id[1];
    return 4;
}
