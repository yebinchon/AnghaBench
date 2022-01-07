
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int cipher; int ctx_df; int ctx; } ;
struct TYPE_5__ {TYPE_4__ ctr; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ RAND_DRBG ;


 int EVP_CIPHER_CTX_free (int ) ;
 int EVP_CIPHER_free (int ) ;
 int OPENSSL_cleanse (TYPE_4__*,int) ;

__attribute__((used)) static int drbg_ctr_uninstantiate(RAND_DRBG *drbg)
{
    EVP_CIPHER_CTX_free(drbg->data.ctr.ctx);
    EVP_CIPHER_CTX_free(drbg->data.ctr.ctx_df);
    EVP_CIPHER_free(drbg->data.ctr.cipher);
    OPENSSL_cleanse(&drbg->data.ctr, sizeof(drbg->data.ctr));
    return 1;
}
