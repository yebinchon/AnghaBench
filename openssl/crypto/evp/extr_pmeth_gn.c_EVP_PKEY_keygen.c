
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ operation; TYPE_1__* pmeth; } ;
struct TYPE_5__ {int (* keygen ) (TYPE_2__*,int *) ;} ;
typedef TYPE_2__ EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int EVP_F_EVP_PKEY_KEYGEN ;
 scalar_t__ EVP_PKEY_OP_KEYGEN ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ;
 int EVP_R_OPERATON_NOT_INITIALIZED ;
 int EVPerr (int ,int ) ;
 int stub1 (TYPE_2__*,int *) ;

int EVP_PKEY_keygen(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey)
{
    int ret;

    if (!ctx || !ctx->pmeth || !ctx->pmeth->keygen) {
        EVPerr(EVP_F_EVP_PKEY_KEYGEN,
               EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }
    if (ctx->operation != EVP_PKEY_OP_KEYGEN) {
        EVPerr(EVP_F_EVP_PKEY_KEYGEN, EVP_R_OPERATON_NOT_INITIALIZED);
        return -1;
    }

    if (ppkey == ((void*)0))
        return -1;

    if (*ppkey == ((void*)0))
        *ppkey = EVP_PKEY_new();
    if (*ppkey == ((void*)0))
        return -1;

    ret = ctx->pmeth->keygen(ctx, *ppkey);
    if (ret <= 0) {
        EVP_PKEY_free(*ppkey);
        *ppkey = ((void*)0);
    }
    return ret;
}
