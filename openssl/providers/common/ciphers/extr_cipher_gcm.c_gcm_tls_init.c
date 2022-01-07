
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buf; size_t tls_aad_len; int enc; scalar_t__ tls_enc_records; } ;
typedef TYPE_1__ PROV_GCM_CTX ;


 size_t EVP_AEAD_TLS1_AAD_LEN ;
 size_t EVP_GCM_TLS_EXPLICIT_IV_LEN ;
 size_t EVP_GCM_TLS_TAG_LEN ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int gcm_tls_init(PROV_GCM_CTX *dat, unsigned char *aad, size_t aad_len)
{
    unsigned char *buf;
    size_t len;

    if (aad_len != EVP_AEAD_TLS1_AAD_LEN)
       return 0;


    buf = dat->buf;
    memcpy(buf, aad, aad_len);
    dat->tls_aad_len = aad_len;
    dat->tls_enc_records = 0;

    len = buf[aad_len - 2] << 8 | buf[aad_len - 1];

    if (len < EVP_GCM_TLS_EXPLICIT_IV_LEN)
        return 0;
    len -= EVP_GCM_TLS_EXPLICIT_IV_LEN;


    if (!dat->enc) {
        if (len < EVP_GCM_TLS_TAG_LEN)
            return 0;
        len -= EVP_GCM_TLS_TAG_LEN;
    }
    buf[aad_len - 2] = (unsigned char)(len >> 8);
    buf[aad_len - 1] = (unsigned char)(len & 0xff);

    return EVP_GCM_TLS_TAG_LEN;
}
