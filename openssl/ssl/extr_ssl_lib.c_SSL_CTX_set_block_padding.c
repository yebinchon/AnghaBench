
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t block_padding; } ;
typedef TYPE_1__ SSL_CTX ;


 size_t SSL3_RT_MAX_PLAIN_LENGTH ;

int SSL_CTX_set_block_padding(SSL_CTX *ctx, size_t block_size)
{

    if (block_size == 1)
        ctx->block_padding = 0;
    else if (block_size <= SSL3_RT_MAX_PLAIN_LENGTH)
        ctx->block_padding = block_size;
    else
        return 0;
    return 1;
}
