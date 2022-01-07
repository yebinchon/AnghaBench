
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* keygen_info; int (* pkey_gencb ) (TYPE_1__*) ;} ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef int BN_GENCB ;


 TYPE_1__* BN_GENCB_get_arg (int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int trans_cb(int a, int b, BN_GENCB *gcb)
{
    EVP_PKEY_CTX *ctx = BN_GENCB_get_arg(gcb);
    ctx->keygen_info[0] = a;
    ctx->keygen_info[1] = b;
    return ctx->pkey_gencb(ctx);
}
