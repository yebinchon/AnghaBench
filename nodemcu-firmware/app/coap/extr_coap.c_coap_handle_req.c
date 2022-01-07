
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
typedef int coap_rw_buffer_t ;
struct TYPE_18__ {scalar_t__ code; int * id; } ;
struct TYPE_19__ {int tok; TYPE_3__ hdr; } ;
typedef TYPE_4__ coap_packet_t ;
struct TYPE_16__ {scalar_t__ len; int p; } ;
struct TYPE_20__ {TYPE_1__ buf; } ;
typedef TYPE_5__ coap_option_t ;
struct TYPE_21__ {int (* handler ) (TYPE_6__ const*,int *,TYPE_4__ const*,TYPE_4__*,int ,int ) ;scalar_t__ method; int * user_entry; TYPE_2__* path; } ;
typedef TYPE_6__ coap_endpoint_t ;
struct TYPE_17__ {int count; int * elems; } ;


 int COAP_CONTENTTYPE_NONE ;
 int COAP_OPTION_URI_PATH ;
 int COAP_RSPCODE_NOT_FOUND ;
 TYPE_5__* coap_findOptions (TYPE_4__ const*,int ,int*) ;
 int coap_make_response (int *,TYPE_4__*,int *,int ,int ,int ,int *,int ,int ) ;
 TYPE_6__* endpoints ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;
 int stub1 (TYPE_6__ const*,int *,TYPE_4__ const*,TYPE_4__*,int ,int ) ;

int coap_handle_req(coap_rw_buffer_t *scratch, const coap_packet_t *inpkt, coap_packet_t *outpkt)
{
    const coap_option_t *opt;
    int i;
    uint8_t count;
    const coap_endpoint_t *ep = endpoints;

    while(((void*)0) != ep->handler)
    {
        if (ep->method != inpkt->hdr.code)
            goto next;
        if (((void*)0) != (opt = coap_findOptions(inpkt, COAP_OPTION_URI_PATH, &count)))
        {

            if ((count != ep->path->count ) && (count != ep->path->count + 1))
                goto next;
            for (i=0;i<ep->path->count;i++)
            {
                if (opt[i].buf.len != strlen(ep->path->elems[i]))
                    goto next;
                if (0 != memcmp(ep->path->elems[i], opt[i].buf.p, opt[i].buf.len))
                    goto next;
            }

            if (count==ep->path->count+1 && ep->user_entry == ((void*)0))
                goto next;
            return ep->handler(ep, scratch, inpkt, outpkt, inpkt->hdr.id[0], inpkt->hdr.id[1]);
        }
next:
        ep++;
    }

    coap_make_response(scratch, outpkt, ((void*)0), 0, inpkt->hdr.id[0], inpkt->hdr.id[1], &inpkt->tok, COAP_RSPCODE_NOT_FOUND, COAP_CONTENTTYPE_NONE);

    return 0;
}
