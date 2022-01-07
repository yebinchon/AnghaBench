
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int ks; } ;
struct TYPE_4__ {int payload_length; int head; int md; int tail; TYPE_1__ ks; } ;
typedef TYPE_2__ PROV_RC4_HMAC_MD5_CTX ;
typedef int PROV_CIPHER_CTX ;


 int MD5_Init (int *) ;
 int NO_PAYLOAD_LENGTH ;
 int RC4_set_key (int *,size_t,int const*) ;

__attribute__((used)) static int cipher_hw_rc4_hmac_md5_initkey(PROV_CIPHER_CTX *bctx,
                                          const uint8_t *key, size_t keylen)
{
    PROV_RC4_HMAC_MD5_CTX *ctx = (PROV_RC4_HMAC_MD5_CTX *)bctx;

    RC4_set_key(&ctx->ks.ks, keylen, key);
    MD5_Init(&ctx->head);
    ctx->tail = ctx->head;
    ctx->md = ctx->head;
    ctx->payload_length = NO_PAYLOAD_LENGTH;
    return 1;
}
