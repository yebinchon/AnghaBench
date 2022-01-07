
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * signer_key; } ;
typedef TYPE_1__ TS_RESP_CTX ;
typedef int EVP_PKEY ;


 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_up_ref (int *) ;

int TS_RESP_CTX_set_signer_key(TS_RESP_CTX *ctx, EVP_PKEY *key)
{
    EVP_PKEY_free(ctx->signer_key);
    ctx->signer_key = key;
    EVP_PKEY_up_ref(ctx->signer_key);

    return 1;
}
