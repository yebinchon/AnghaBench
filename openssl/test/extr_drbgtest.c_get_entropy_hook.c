
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fail; size_t (* get_entropy ) (int *,unsigned char**,int,size_t,size_t,int) ;int reseed_count; } ;
typedef int RAND_DRBG ;
typedef TYPE_1__ HOOK_CTX ;


 TYPE_1__* get_hook_ctx (int *) ;
 size_t stub1 (int *,unsigned char**,int,size_t,size_t,int) ;

__attribute__((used)) static size_t get_entropy_hook(RAND_DRBG *drbg, unsigned char **pout,
                              int entropy, size_t min_len, size_t max_len,
                              int prediction_resistance)
{
    size_t ret;
    HOOK_CTX *ctx = get_hook_ctx(drbg);

    if (ctx->fail != 0)
        return 0;

    ret = ctx->get_entropy(drbg, pout, entropy, min_len, max_len,
                           prediction_resistance);

    if (ret != 0)
        ctx->reseed_count++;
    return ret;
}
