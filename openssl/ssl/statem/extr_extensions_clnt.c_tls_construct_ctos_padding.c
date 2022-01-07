
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509 ;
typedef int WPACKET ;
struct TYPE_10__ {int options; TYPE_3__* session; } ;
struct TYPE_8__ {scalar_t__ ticklen; } ;
struct TYPE_9__ {scalar_t__ ssl_version; TYPE_2__ ext; TYPE_1__* cipher; } ;
struct TYPE_7__ {int algorithm2; } ;
typedef TYPE_4__ SSL ;
typedef int EXT_RETURN ;
typedef int EVP_MD ;


 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ EVP_MD_size (int const*) ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 size_t F5_WORKAROUND_MAX_MSG_LEN ;
 size_t F5_WORKAROUND_MIN_MSG_LEN ;
 scalar_t__ PSK_PRE_BINDER_OVERHEAD ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CTOS_PADDING ;
 int SSL_OP_TLSEXT_PADDING ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 scalar_t__ TLS1_3_VERSION ;
 int TLSEXT_TYPE_padding ;
 int WPACKET_get_total_written (int *,size_t*) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_sub_allocate_bytes_u16 (int *,size_t,unsigned char**) ;
 int memset (unsigned char*,int ,size_t) ;
 int * ssl_md (int ) ;

EXT_RETURN tls_construct_ctos_padding(SSL *s, WPACKET *pkt,
                                      unsigned int context, X509 *x,
                                      size_t chainidx)
{
    unsigned char *padbytes;
    size_t hlen;

    if ((s->options & SSL_OP_TLSEXT_PADDING) == 0)
        return EXT_RETURN_NOT_SENT;







    if (!WPACKET_get_total_written(pkt, &hlen)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_PADDING,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }





    if (s->session->ssl_version == TLS1_3_VERSION
            && s->session->ext.ticklen != 0
            && s->session->cipher != ((void*)0)) {
        const EVP_MD *md = ssl_md(s->session->cipher->algorithm2);

        if (md != ((void*)0)) {




            hlen += PSK_PRE_BINDER_OVERHEAD + s->session->ext.ticklen
                     + EVP_MD_size(md);
        }
    }

    if (hlen > F5_WORKAROUND_MIN_MSG_LEN && hlen < F5_WORKAROUND_MAX_MSG_LEN) {

        hlen = F5_WORKAROUND_MAX_MSG_LEN - hlen;







        if (hlen > 4)
            hlen -= 4;
        else
            hlen = 1;

        if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_padding)
                || !WPACKET_sub_allocate_bytes_u16(pkt, hlen, &padbytes)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_PADDING,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        memset(padbytes, 0, hlen);
    }

    return EXT_RETURN_SENT;
}
