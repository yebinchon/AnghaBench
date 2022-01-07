
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int enc; } ;
struct TYPE_4__ {unsigned int payload_length; int md; int head; } ;
typedef TYPE_1__ PROV_RC4_HMAC_MD5_CTX ;
typedef TYPE_2__ PROV_CIPHER_CTX ;


 size_t EVP_AEAD_TLS1_AAD_LEN ;
 unsigned int MD5_DIGEST_LENGTH ;
 int MD5_Update (int *,unsigned char*,size_t) ;

__attribute__((used)) static int cipher_hw_rc4_hmac_md5_tls_init(PROV_CIPHER_CTX *bctx,
                                           unsigned char *aad, size_t aad_len)
{
    PROV_RC4_HMAC_MD5_CTX *ctx = (PROV_RC4_HMAC_MD5_CTX *)bctx;
    unsigned int len;

    if (aad_len != EVP_AEAD_TLS1_AAD_LEN)
        return 0;

    len = aad[aad_len - 2] << 8 | aad[aad_len - 1];

    if (!bctx->enc) {
        if (len < MD5_DIGEST_LENGTH)
            return 0;
        len -= MD5_DIGEST_LENGTH;
        aad[aad_len - 2] = len >> 8;
        aad[aad_len - 1] = len;
    }
    ctx->payload_length = len;
    ctx->md = ctx->head;
    MD5_Update(&ctx->md, aad, aad_len);

    return MD5_DIGEST_LENGTH;
}
