
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; scalar_t__ line_num; scalar_t__ length; scalar_t__ num; } ;
typedef TYPE_1__ EVP_ENCODE_CTX ;



void EVP_DecodeInit(EVP_ENCODE_CTX *ctx)
{

    ctx->num = 0;
    ctx->length = 0;
    ctx->line_num = 0;
    ctx->flags = 0;
}
