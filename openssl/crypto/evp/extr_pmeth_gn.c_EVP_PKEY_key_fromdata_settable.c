
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int keymgmt; } ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_PKEY_CTX ;


 int EVP_PKEY_OP_UNDEFINED ;
 int const* evp_keymgmt_importdomparam_types (int ) ;
 scalar_t__ fromdata_init (TYPE_1__*,int ) ;

const OSSL_PARAM *EVP_PKEY_key_fromdata_settable(EVP_PKEY_CTX *ctx)
{

    if (fromdata_init(ctx, EVP_PKEY_OP_UNDEFINED))
        return evp_keymgmt_importdomparam_types(ctx->keymgmt);
    return ((void*)0);
}
