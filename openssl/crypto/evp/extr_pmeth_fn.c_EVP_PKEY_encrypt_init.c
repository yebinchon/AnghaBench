
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int operation; TYPE_1__* pmeth; } ;
struct TYPE_5__ {int (* encrypt_init ) (TYPE_2__*) ;int encrypt; } ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int EVP_F_EVP_PKEY_ENCRYPT_INIT ;
 int EVP_PKEY_OP_ENCRYPT ;
 int EVP_PKEY_OP_UNDEFINED ;
 int EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ;
 int EVPerr (int ,int ) ;
 int stub1 (TYPE_2__*) ;

int EVP_PKEY_encrypt_init(EVP_PKEY_CTX *ctx)
{
    int ret;
    if (!ctx || !ctx->pmeth || !ctx->pmeth->encrypt) {
        EVPerr(EVP_F_EVP_PKEY_ENCRYPT_INIT,
               EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }
    ctx->operation = EVP_PKEY_OP_ENCRYPT;
    if (!ctx->pmeth->encrypt_init)
        return 1;
    ret = ctx->pmeth->encrypt_init(ctx);
    if (ret <= 0)
        ctx->operation = EVP_PKEY_OP_UNDEFINED;
    return ret;
}
