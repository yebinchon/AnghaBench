
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ mode; scalar_t__ enc; } ;
struct TYPE_5__ {int ks; } ;
struct TYPE_6__ {TYPE_1__ ks; } ;
typedef TYPE_2__ PROV_IDEA_CTX ;
typedef TYPE_3__ PROV_CIPHER_CTX ;
typedef int IDEA_KEY_SCHEDULE ;


 scalar_t__ EVP_CIPH_CFB_MODE ;
 scalar_t__ EVP_CIPH_OFB_MODE ;
 int IDEA_set_decrypt_key (int *,int *) ;
 int IDEA_set_encrypt_key (unsigned char const*,int *) ;
 int OPENSSL_cleanse (unsigned char*,int) ;

__attribute__((used)) static int cipher_hw_idea_initkey(PROV_CIPHER_CTX *ctx,
                                  const unsigned char *key, size_t keylen)
{
    PROV_IDEA_CTX *ictx = (PROV_IDEA_CTX *)ctx;
    IDEA_KEY_SCHEDULE *ks = &(ictx->ks.ks);

    if (ctx->enc
            || ctx->mode == EVP_CIPH_OFB_MODE
            || ctx->mode == EVP_CIPH_CFB_MODE) {
        IDEA_set_encrypt_key(key, ks);
    } else {
        IDEA_KEY_SCHEDULE tmp;

        IDEA_set_encrypt_key(key, &tmp);
        IDEA_set_decrypt_key(&tmp, ks);
        OPENSSL_cleanse((unsigned char *)&tmp, sizeof(IDEA_KEY_SCHEDULE));
    }
    return 1;
}
