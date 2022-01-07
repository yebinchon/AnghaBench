
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t max_len; size_t len; scalar_t__ min_len; } ;
typedef TYPE_1__ RAND_POOL ;


 size_t ENTROPY_TO_BYTES (size_t,unsigned int) ;
 int RAND_F_RAND_POOL_BYTES_NEEDED ;
 int RAND_R_ARGUMENT_OUT_OF_RANGE ;
 int RAND_R_RANDOM_POOL_OVERFLOW ;
 int RANDerr (int ,int ) ;
 size_t rand_pool_entropy_needed (TYPE_1__*) ;
 int rand_pool_grow (TYPE_1__*,size_t) ;

size_t rand_pool_bytes_needed(RAND_POOL *pool, unsigned int entropy_factor)
{
    size_t bytes_needed;
    size_t entropy_needed = rand_pool_entropy_needed(pool);

    if (entropy_factor < 1) {
        RANDerr(RAND_F_RAND_POOL_BYTES_NEEDED, RAND_R_ARGUMENT_OUT_OF_RANGE);
        return 0;
    }

    bytes_needed = ENTROPY_TO_BYTES(entropy_needed, entropy_factor);

    if (bytes_needed > pool->max_len - pool->len) {

        RANDerr(RAND_F_RAND_POOL_BYTES_NEEDED, RAND_R_RANDOM_POOL_OVERFLOW);
        return 0;
    }

    if (pool->len < pool->min_len &&
        bytes_needed < pool->min_len - pool->len)

        bytes_needed = pool->min_len - pool->len;
    if (!rand_pool_grow(pool, bytes_needed)) {

        pool->max_len = pool->len = 0;
        return 0;
    }

    return bytes_needed;
}
