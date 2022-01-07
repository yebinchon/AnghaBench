
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; } ;
typedef TYPE_1__ EVP_ENCODE_CTX ;



int EVP_ENCODE_CTX_num(EVP_ENCODE_CTX *ctx)
{
    return ctx->num;
}
