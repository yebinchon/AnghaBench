
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ text; scalar_t__ aad; } ;
struct TYPE_7__ {int chacha; int tls_payload_length; scalar_t__ mac_inited; scalar_t__ aad; TYPE_1__ len; } ;
struct TYPE_6__ {scalar_t__ enc; } ;
typedef TYPE_2__ PROV_CIPHER_CTX ;
typedef TYPE_3__ PROV_CHACHA20_POLY1305_CTX ;


 int NO_TLS_PAYLOAD_LENGTH ;
 int chacha20_dinit (int *,unsigned char const*,size_t,int *,int ) ;
 int chacha20_einit (int *,unsigned char const*,size_t,int *,int ) ;

__attribute__((used)) static int chacha20_poly1305_initkey(PROV_CIPHER_CTX *bctx,
                                     const unsigned char *key, size_t keylen)
{
    PROV_CHACHA20_POLY1305_CTX *ctx = (PROV_CHACHA20_POLY1305_CTX *)bctx;

    ctx->len.aad = 0;
    ctx->len.text = 0;
    ctx->aad = 0;
    ctx->mac_inited = 0;
    ctx->tls_payload_length = NO_TLS_PAYLOAD_LENGTH;

    if (bctx->enc)
        return chacha20_einit(&ctx->chacha, key, keylen, ((void*)0), 0);
    else
        return chacha20_dinit(&ctx->chacha, key, keylen, ((void*)0), 0);
}
