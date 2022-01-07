
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hmac_key ;
struct TYPE_2__ {int tail; int head; } ;
typedef TYPE_1__ PROV_RC4_HMAC_MD5_CTX ;
typedef int PROV_CIPHER_CTX ;


 int MD5_Final (unsigned char*,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,unsigned char const*,int) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void cipher_hw_rc4_hmac_md5_init_mackey(PROV_CIPHER_CTX *bctx,
                                               const unsigned char *key,
                                               size_t len)
{
    PROV_RC4_HMAC_MD5_CTX *ctx = (PROV_RC4_HMAC_MD5_CTX *)bctx;
    unsigned int i;
    unsigned char hmac_key[64];

    memset(hmac_key, 0, sizeof(hmac_key));

    if (len > (int)sizeof(hmac_key)) {
        MD5_Init(&ctx->head);
        MD5_Update(&ctx->head, key, len);
        MD5_Final(hmac_key, &ctx->head);
    } else {
        memcpy(hmac_key, key, len);
    }

    for (i = 0; i < sizeof(hmac_key); i++)
        hmac_key[i] ^= 0x36;
    MD5_Init(&ctx->head);
    MD5_Update(&ctx->head, hmac_key, sizeof(hmac_key));

    for (i = 0; i < sizeof(hmac_key); i++)
        hmac_key[i] ^= 0x36 ^ 0x5c;
    MD5_Init(&ctx->tail);
    MD5_Update(&ctx->tail, hmac_key, sizeof(hmac_key));

    OPENSSL_cleanse(hmac_key, sizeof(hmac_key));
}
