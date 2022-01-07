
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ctx; int md; } ;
struct TYPE_5__ {TYPE_4__ hash; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ RAND_DRBG ;


 int EVP_MD_CTX_free (int ) ;
 int EVP_MD_free (int ) ;
 int OPENSSL_cleanse (TYPE_4__*,int) ;

__attribute__((used)) static int drbg_hash_uninstantiate(RAND_DRBG *drbg)
{
    EVP_MD_free(drbg->data.hash.md);
    EVP_MD_CTX_free(drbg->data.hash.ctx);
    OPENSSL_cleanse(&drbg->data.hash, sizeof(drbg->data.hash));
    return 1;
}
