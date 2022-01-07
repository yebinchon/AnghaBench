
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int operation; int keymgmt; } ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int ERR_LIB_EVP ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_raise (int ,int ) ;
 int EVP_PKEY_OP_PARAMFROMDATA ;
 int EVP_PKEY_OP_TYPE_FROMDATA ;
 int * EVP_PKEY_new () ;
 int EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ;
 void* evp_keymgmt_fromdata (int *,int ,int *,int) ;

int EVP_PKEY_fromdata(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey, OSSL_PARAM params[])
{
    void *provdata = ((void*)0);

    if (ctx == ((void*)0) || (ctx->operation & EVP_PKEY_OP_TYPE_FROMDATA) == 0) {
        ERR_raise(ERR_LIB_EVP, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }

    if (ppkey == ((void*)0))
        return -1;

    if (*ppkey == ((void*)0))
        *ppkey = EVP_PKEY_new();

    if (*ppkey == ((void*)0)) {
        ERR_raise(ERR_LIB_EVP, ERR_R_MALLOC_FAILURE);
        return -1;
    }

    provdata =
        evp_keymgmt_fromdata(*ppkey, ctx->keymgmt, params,
                             ctx->operation == EVP_PKEY_OP_PARAMFROMDATA);

    if (provdata == ((void*)0))
        return 0;

    return 1;
}
