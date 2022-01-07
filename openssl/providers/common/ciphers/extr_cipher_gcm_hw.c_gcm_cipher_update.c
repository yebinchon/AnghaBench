
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {size_t* u; } ;
struct TYPE_12__ {int u; } ;
struct TYPE_11__ {int c; } ;
struct TYPE_15__ {int mres; TYPE_3__ len; TYPE_2__ Xi; TYPE_1__ Yi; int key; } ;
struct TYPE_14__ {TYPE_6__ gcm; int * ctr; scalar_t__ enc; } ;
typedef TYPE_4__ PROV_GCM_CTX ;


 scalar_t__ AES_GCM_ASM (TYPE_4__*) ;
 scalar_t__ CRYPTO_gcm128_decrypt (TYPE_6__*,unsigned char const*,unsigned char*,size_t) ;
 scalar_t__ CRYPTO_gcm128_decrypt_ctr32 (TYPE_6__*,unsigned char const*,unsigned char*,size_t,int *) ;
 scalar_t__ CRYPTO_gcm128_encrypt (TYPE_6__*,unsigned char const*,unsigned char*,size_t) ;
 scalar_t__ CRYPTO_gcm128_encrypt_ctr32 (TYPE_6__*,unsigned char const*,unsigned char*,size_t,int *) ;
 size_t aesni_gcm_decrypt (unsigned char const*,unsigned char*,size_t,int ,int ,int ) ;
 size_t aesni_gcm_encrypt (unsigned char const*,unsigned char*,size_t,int ,int ,int ) ;

int gcm_cipher_update(PROV_GCM_CTX *ctx, const unsigned char *in,
                      size_t len, unsigned char *out)
{
    if (ctx->enc) {
        if (ctx->ctr != ((void*)0)) {
            if (CRYPTO_gcm128_encrypt_ctr32(&ctx->gcm, in, out, len, ctx->ctr))
                return 0;

        } else {
            if (CRYPTO_gcm128_encrypt(&ctx->gcm, in, out, len))
                return 0;
        }
    } else {
        if (ctx->ctr != ((void*)0)) {
            if (CRYPTO_gcm128_decrypt_ctr32(&ctx->gcm, in, out, len, ctx->ctr))
                return 0;

        } else {
            if (CRYPTO_gcm128_decrypt(&ctx->gcm, in, out, len))
                return 0;
        }
    }
    return 1;
}
