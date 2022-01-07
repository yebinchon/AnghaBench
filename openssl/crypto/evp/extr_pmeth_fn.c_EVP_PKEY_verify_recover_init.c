
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;


 int EVP_PKEY_OP_VERIFYRECOVER ;
 int evp_pkey_signature_init (int *,int ) ;

int EVP_PKEY_verify_recover_init(EVP_PKEY_CTX *ctx)
{
    return evp_pkey_signature_init(ctx, EVP_PKEY_OP_VERIFYRECOVER);
}
