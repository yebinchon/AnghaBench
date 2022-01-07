
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * exchprovctx; } ;
struct TYPE_9__ {TYPE_1__ kex; } ;
struct TYPE_10__ {TYPE_2__ op; } ;
typedef int OSSL_PARAM ;
typedef TYPE_3__ EVP_PKEY_CTX ;


 int ERR_LIB_EVP ;
 int ERR_raise (int ,int ) ;
 int EVP_PKEY_CTRL_DH_PAD ;
 int EVP_PKEY_CTX_IS_DERIVE_OP (TYPE_3__*) ;
 int EVP_PKEY_CTX_ctrl (TYPE_3__*,int ,int ,int ,int,int *) ;
 int EVP_PKEY_CTX_set_params (TYPE_3__*,int *) ;
 int EVP_PKEY_DH ;
 int EVP_PKEY_OP_DERIVE ;
 int EVP_R_COMMAND_NOT_SUPPORTED ;
 int OSSL_EXCHANGE_PARAM_PAD ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_uint (int ,unsigned int*) ;

int EVP_PKEY_CTX_set_dh_pad(EVP_PKEY_CTX *ctx, int pad)
{
    OSSL_PARAM dh_pad_params[2];
    unsigned int upad = pad;


    if (ctx == ((void*)0) || !EVP_PKEY_CTX_IS_DERIVE_OP(ctx)) {
        ERR_raise(ERR_LIB_EVP, EVP_R_COMMAND_NOT_SUPPORTED);
        return -2;
    }


    if (ctx->op.kex.exchprovctx == ((void*)0))
        return EVP_PKEY_CTX_ctrl(ctx, EVP_PKEY_DH, EVP_PKEY_OP_DERIVE,
                                 EVP_PKEY_CTRL_DH_PAD, pad, ((void*)0));

    dh_pad_params[0] = OSSL_PARAM_construct_uint(OSSL_EXCHANGE_PARAM_PAD, &upad);
    dh_pad_params[1] = OSSL_PARAM_construct_end();

    return EVP_PKEY_CTX_set_params(ctx, dh_pad_params);
}
