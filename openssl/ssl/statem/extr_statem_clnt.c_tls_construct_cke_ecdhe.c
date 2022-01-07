
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_6__ {int * peer_tmp; } ;
struct TYPE_7__ {TYPE_1__ s3; } ;
typedef TYPE_2__ SSL ;
typedef int EVP_PKEY ;


 int ERR_R_EC_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_free (int *) ;
 size_t EVP_PKEY_get1_tls_encodedpoint (int *,unsigned char**) ;
 int OPENSSL_free (unsigned char*) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CKE_ECDHE ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int WPACKET_sub_memcpy_u8 (int *,unsigned char*,size_t) ;
 scalar_t__ ssl_derive (TYPE_2__*,int *,int *,int ) ;
 int * ssl_generate_pkey (int *) ;

__attribute__((used)) static int tls_construct_cke_ecdhe(SSL *s, WPACKET *pkt)
{

    unsigned char *encodedPoint = ((void*)0);
    size_t encoded_pt_len = 0;
    EVP_PKEY *ckey = ((void*)0), *skey = ((void*)0);
    int ret = 0;

    skey = s->s3.peer_tmp;
    if (skey == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_ECDHE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    ckey = ssl_generate_pkey(skey);
    if (ckey == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_ECDHE,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (ssl_derive(s, ckey, skey, 0) == 0) {

        goto err;
    }


    encoded_pt_len = EVP_PKEY_get1_tls_encodedpoint(ckey, &encodedPoint);

    if (encoded_pt_len == 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_ECDHE,
                 ERR_R_EC_LIB);
        goto err;
    }

    if (!WPACKET_sub_memcpy_u8(pkt, encodedPoint, encoded_pt_len)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_ECDHE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ret = 1;
 err:
    OPENSSL_free(encodedPoint);
    EVP_PKEY_free(ckey);
    return ret;





}
