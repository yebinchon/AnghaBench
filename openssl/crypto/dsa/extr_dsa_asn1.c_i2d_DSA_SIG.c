
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_8__ {int * data; } ;
struct TYPE_7__ {int s; int r; } ;
typedef TYPE_1__ DSA_SIG ;
typedef TYPE_2__ BUF_MEM ;


 int BUF_MEM_free (TYPE_2__*) ;
 TYPE_2__* BUF_MEM_new () ;
 int SIZE_MAX ;
 int WPACKET_cleanup (int *) ;
 int WPACKET_finish (int *) ;
 int WPACKET_get_total_written (int *,size_t*) ;
 int WPACKET_init_len (int *,TYPE_2__*,int ) ;
 int WPACKET_init_null (int *,int ) ;
 int WPACKET_init_static_len (int *,unsigned char*,int ,int ) ;
 int encode_der_dsa_sig (int *,int ,int ) ;

int i2d_DSA_SIG(const DSA_SIG *sig, unsigned char **ppout)
{
    BUF_MEM *buf = ((void*)0);
    size_t encoded_len;
    WPACKET pkt;

    if (ppout == ((void*)0)) {
        if (!WPACKET_init_null(&pkt, 0))
            return -1;
    } else if (*ppout == ((void*)0)) {
        if ((buf = BUF_MEM_new()) == ((void*)0)
                || !WPACKET_init_len(&pkt, buf, 0)) {
            BUF_MEM_free(buf);
            return -1;
        }
    } else {
        if (!WPACKET_init_static_len(&pkt, *ppout, SIZE_MAX, 0))
            return -1;
    }

    if (!encode_der_dsa_sig(&pkt, sig->r, sig->s)
            || !WPACKET_get_total_written(&pkt, &encoded_len)
            || !WPACKET_finish(&pkt)) {
        BUF_MEM_free(buf);
        WPACKET_cleanup(&pkt);
        return -1;
    }

    if (ppout != ((void*)0)) {
        if (*ppout == ((void*)0)) {
            *ppout = (unsigned char *)buf->data;
            buf->data = ((void*)0);
            BUF_MEM_free(buf);
        } else {
            *ppout += encoded_len;
        }
    }

    return (int)encoded_len;
}
