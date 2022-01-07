
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int d; int mac_ctx_init; } ;
struct TYPE_5__ {int byte; } ;
typedef TYPE_1__ SIV_BLOCK ;
typedef TYPE_2__ SIV128_CONTEXT ;
typedef int EVP_MAC_CTX ;


 int * EVP_MAC_CTX_dup (int ) ;
 int EVP_MAC_CTX_free (int *) ;
 int EVP_MAC_final (int *,int ,size_t*,int) ;
 int EVP_MAC_update (int *,unsigned char const*,size_t) ;
 size_t SIV_LEN ;
 int siv128_dbl (int *) ;
 int siv128_xorblock (int *,TYPE_1__*) ;

int CRYPTO_siv128_aad(SIV128_CONTEXT *ctx, const unsigned char *aad,
                      size_t len)
{
    SIV_BLOCK mac_out;
    size_t out_len = SIV_LEN;
    EVP_MAC_CTX *mac_ctx;

    siv128_dbl(&ctx->d);

    if ((mac_ctx = EVP_MAC_CTX_dup(ctx->mac_ctx_init)) == ((void*)0)
        || !EVP_MAC_update(mac_ctx, aad, len)
        || !EVP_MAC_final(mac_ctx, mac_out.byte, &out_len,
                          sizeof(mac_out.byte))
        || out_len != SIV_LEN) {
        EVP_MAC_CTX_free(mac_ctx);
        return 0;
    }
    EVP_MAC_CTX_free(mac_ctx);

    siv128_xorblock(&ctx->d, &mac_out);

    return 1;
}
