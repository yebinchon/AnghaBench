
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_7__ {int * pkey; } ;
struct TYPE_8__ {unsigned int group_id; TYPE_1__ tmp; } ;
struct TYPE_9__ {scalar_t__ hello_retry_request; TYPE_2__ s3; } ;
typedef TYPE_3__ SSL ;
typedef int EVP_PKEY ;


 int ERR_R_EC_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int EVP_PKEY_free (int *) ;
 size_t EVP_PKEY_get1_tls_encodedpoint (int *,unsigned char**) ;
 int OPENSSL_free (unsigned char*) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_ADD_KEY_SHARE ;
 scalar_t__ SSL_HRR_PENDING ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int WPACKET_put_bytes_u16 (int *,unsigned int) ;
 int WPACKET_sub_memcpy_u16 (int *,unsigned char*,size_t) ;
 int ossl_assert (int) ;
 int * ssl_generate_pkey_group (TYPE_3__*,unsigned int) ;

__attribute__((used)) static int add_key_share(SSL *s, WPACKET *pkt, unsigned int curve_id)
{
    unsigned char *encoded_point = ((void*)0);
    EVP_PKEY *key_share_key = ((void*)0);
    size_t encodedlen;

    if (s->s3.tmp.pkey != ((void*)0)) {
        if (!ossl_assert(s->hello_retry_request == SSL_HRR_PENDING)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_ADD_KEY_SHARE,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }



        key_share_key = s->s3.tmp.pkey;
    } else {
        key_share_key = ssl_generate_pkey_group(s, curve_id);
        if (key_share_key == ((void*)0)) {

            return 0;
        }
    }


    encodedlen = EVP_PKEY_get1_tls_encodedpoint(key_share_key,
                                                &encoded_point);
    if (encodedlen == 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_ADD_KEY_SHARE, ERR_R_EC_LIB);
        goto err;
    }


    if (!WPACKET_put_bytes_u16(pkt, curve_id)
            || !WPACKET_sub_memcpy_u16(pkt, encoded_point, encodedlen)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_ADD_KEY_SHARE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }






    s->s3.tmp.pkey = key_share_key;
    s->s3.group_id = curve_id;
    OPENSSL_free(encoded_point);

    return 1;
 err:
    if (s->s3.tmp.pkey == ((void*)0))
        EVP_PKEY_free(key_share_key);
    OPENSSL_free(encoded_point);
    return 0;
}
