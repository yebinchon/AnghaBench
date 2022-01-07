
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef int DSA_PKEY_CTX ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void pkey_dsa_cleanup(EVP_PKEY_CTX *ctx)
{
    DSA_PKEY_CTX *dctx = ctx->data;
    OPENSSL_free(dctx);
}
