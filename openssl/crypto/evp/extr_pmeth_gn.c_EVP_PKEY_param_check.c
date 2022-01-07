
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* ameth; } ;
struct TYPE_10__ {TYPE_1__* pmeth; TYPE_4__* pkey; } ;
struct TYPE_9__ {int (* pkey_param_check ) (TYPE_4__*) ;} ;
struct TYPE_8__ {int (* param_check ) (TYPE_4__*) ;} ;
typedef TYPE_3__ EVP_PKEY_CTX ;
typedef TYPE_4__ EVP_PKEY ;


 int EVP_F_EVP_PKEY_PARAM_CHECK ;
 int EVP_R_NO_KEY_SET ;
 int EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ;
 int EVPerr (int ,int ) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;

int EVP_PKEY_param_check(EVP_PKEY_CTX *ctx)
{
    EVP_PKEY *pkey = ctx->pkey;

    if (pkey == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_PARAM_CHECK, EVP_R_NO_KEY_SET);
        return 0;
    }


    if (ctx->pmeth->param_check != ((void*)0))
        return ctx->pmeth->param_check(pkey);


    if (pkey->ameth == ((void*)0) || pkey->ameth->pkey_param_check == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_PARAM_CHECK,
               EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }

    return pkey->ameth->pkey_param_check(pkey);
}
