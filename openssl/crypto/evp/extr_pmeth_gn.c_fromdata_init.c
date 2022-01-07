
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int operation; int * keymgmt; int propquery; int * algorithm; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;


 int ERR_LIB_EVP ;
 int ERR_raise (int ,int ) ;
 int * EVP_KEYMGMT_fetch (int *,int *,int ) ;
 int EVP_PKEY_OP_UNDEFINED ;
 int EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ;
 int evp_pkey_ctx_free_old_ops (TYPE_1__*) ;

__attribute__((used)) static int fromdata_init(EVP_PKEY_CTX *ctx, int operation)
{
    if (ctx == ((void*)0) || ctx->algorithm == ((void*)0))
        goto not_supported;

    evp_pkey_ctx_free_old_ops(ctx);
    ctx->operation = operation;
    if (ctx->keymgmt == ((void*)0))
        ctx->keymgmt = EVP_KEYMGMT_fetch(((void*)0), ctx->algorithm, ctx->propquery);
    if (ctx->keymgmt == ((void*)0))
        goto not_supported;

    return 1;

 not_supported:
    ctx->operation = EVP_PKEY_OP_UNDEFINED;
    ERR_raise(ERR_LIB_EVP, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
    return -2;
}
