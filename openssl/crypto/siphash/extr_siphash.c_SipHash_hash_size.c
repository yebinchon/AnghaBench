
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t hash_size; } ;
typedef TYPE_1__ SIPHASH ;



size_t SipHash_hash_size(SIPHASH *ctx)
{
    return ctx->hash_size;
}
