
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md; int mdctx; int dsa; } ;
typedef TYPE_1__ PROV_DSA_CTX ;


 int DSA_free (int ) ;
 int EVP_MD_CTX_free (int ) ;
 int EVP_MD_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void dsa_freectx(void *vpdsactx)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;

    DSA_free(pdsactx->dsa);
    EVP_MD_CTX_free(pdsactx->mdctx);
    EVP_MD_free(pdsactx->md);

    OPENSSL_free(pdsactx);
}
