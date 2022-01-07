
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509 ;
typedef int WPACKET ;
struct TYPE_10__ {int npn_seen; } ;
struct TYPE_11__ {TYPE_3__ s3; TYPE_2__* ctx; } ;
struct TYPE_8__ {int (* npn_advertised_cb ) (TYPE_4__*,unsigned char const**,unsigned int*,int ) ;int npn_advertised_cb_arg; } ;
struct TYPE_9__ {TYPE_1__ ext; } ;
typedef TYPE_4__ SSL ;
typedef int EXT_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_STOC_NEXT_PROTO_NEG ;
 int SSL_TLSEXT_ERR_OK ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 int TLSEXT_TYPE_next_proto_neg ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_sub_memcpy_u16 (int *,unsigned char const*,unsigned int) ;
 int stub1 (TYPE_4__*,unsigned char const**,unsigned int*,int ) ;

EXT_RETURN tls_construct_stoc_next_proto_neg(SSL *s, WPACKET *pkt,
                                             unsigned int context, X509 *x,
                                             size_t chainidx)
{
    const unsigned char *npa;
    unsigned int npalen;
    int ret;
    int npn_seen = s->s3.npn_seen;

    s->s3.npn_seen = 0;
    if (!npn_seen || s->ctx->ext.npn_advertised_cb == ((void*)0))
        return EXT_RETURN_NOT_SENT;

    ret = s->ctx->ext.npn_advertised_cb(s, &npa, &npalen,
                                        s->ctx->ext.npn_advertised_cb_arg);
    if (ret == SSL_TLSEXT_ERR_OK) {
        if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_next_proto_neg)
                || !WPACKET_sub_memcpy_u16(pkt, npa, npalen)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_STOC_NEXT_PROTO_NEG,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        s->s3.npn_seen = 1;
    }

    return EXT_RETURN_SENT;
}
