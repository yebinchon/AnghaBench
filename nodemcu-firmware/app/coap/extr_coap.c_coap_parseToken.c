
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int tkl; } ;
typedef TYPE_1__ coap_header_t ;
struct TYPE_6__ {unsigned int len; int const* p; } ;
typedef TYPE_2__ coap_buffer_t ;


 int COAP_ERR_TOKEN_TOO_SHORT ;

int coap_parseToken(coap_buffer_t *tokbuf, const coap_header_t *hdr, const uint8_t *buf, size_t buflen)
{
    if (hdr->tkl == 0)
    {
        tokbuf->p = ((void*)0);
        tokbuf->len = 0;
        return 0;
    }
    else
    if (hdr->tkl <= 8)
    {
        if (4U + hdr->tkl > buflen)
            return COAP_ERR_TOKEN_TOO_SHORT;
        tokbuf->p = buf+4;
        tokbuf->len = hdr->tkl;
        return 0;
    }
    else
    {

        return COAP_ERR_TOKEN_TOO_SHORT;
    }
}
