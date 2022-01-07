
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int tkl; } ;
typedef TYPE_1__ coap_header_t ;
struct TYPE_6__ {int len; int p; } ;
typedef TYPE_2__ coap_buffer_t ;


 int COAP_ERR_BUFFER_TOO_SMALL ;
 int COAP_ERR_UNSUPPORTED ;
 int memcpy (int *,int ,int) ;

int coap_buildToken(const coap_buffer_t *tokbuf, const coap_header_t *hdr, uint8_t *buf, size_t buflen)
{

    uint8_t *p;
    if (buflen < (4U + hdr->tkl))
        return COAP_ERR_BUFFER_TOO_SMALL;
    p = buf + 4;
    if ((hdr->tkl > 0) && (hdr->tkl != tokbuf->len))
        return COAP_ERR_UNSUPPORTED;

    if (hdr->tkl > 0)
        memcpy(p, tokbuf->p, hdr->tkl);



    return hdr->tkl;
}
