
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; size_t tls_aad_len; size_t m; int enc; } ;
typedef TYPE_1__ PROV_CCM_CTX ;


 size_t EVP_AEAD_TLS1_AAD_LEN ;
 size_t EVP_CCM_TLS_EXPLICIT_IV_LEN ;
 int memcpy (int*,unsigned char*,size_t) ;

__attribute__((used)) static int ccm_tls_init(PROV_CCM_CTX *ctx, unsigned char *aad, size_t alen)
{
    size_t len;

    if (alen != EVP_AEAD_TLS1_AAD_LEN)
        return 0;


    memcpy(ctx->buf, aad, alen);
    ctx->tls_aad_len = alen;

    len = ctx->buf[alen - 2] << 8 | ctx->buf[alen - 1];
    if (len < EVP_CCM_TLS_EXPLICIT_IV_LEN)
        return 0;


    len -= EVP_CCM_TLS_EXPLICIT_IV_LEN;

    if (!ctx->enc) {
        if (len < ctx->m)
            return 0;

        len -= ctx->m;
    }
    ctx->buf[alen - 2] = (unsigned char)(len >> 8);
    ctx->buf[alen - 1] = (unsigned char)(len & 0xff);


    return ctx->m;
}
