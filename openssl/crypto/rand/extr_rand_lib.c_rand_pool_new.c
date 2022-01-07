
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t min_len; size_t max_len; size_t alloc_len; int entropy_requested; int secure; int * buffer; } ;
typedef TYPE_1__ RAND_POOL ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 int * OPENSSL_secure_zalloc (size_t) ;
 void* OPENSSL_zalloc (int) ;
 int RAND_F_RAND_POOL_NEW ;
 size_t RAND_POOL_MAX_LENGTH ;
 size_t RAND_POOL_MIN_ALLOCATION (int) ;
 int RANDerr (int ,int ) ;

RAND_POOL *rand_pool_new(int entropy_requested, int secure,
                         size_t min_len, size_t max_len)
{
    RAND_POOL *pool = OPENSSL_zalloc(sizeof(*pool));
    size_t min_alloc_size = RAND_POOL_MIN_ALLOCATION(secure);

    if (pool == ((void*)0)) {
        RANDerr(RAND_F_RAND_POOL_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    pool->min_len = min_len;
    pool->max_len = (max_len > RAND_POOL_MAX_LENGTH) ?
        RAND_POOL_MAX_LENGTH : max_len;
    pool->alloc_len = min_len < min_alloc_size ? min_alloc_size : min_len;
    if (pool->alloc_len > pool->max_len)
        pool->alloc_len = pool->max_len;

    if (secure)
        pool->buffer = OPENSSL_secure_zalloc(pool->alloc_len);
    else
        pool->buffer = OPENSSL_zalloc(pool->alloc_len);

    if (pool->buffer == ((void*)0)) {
        RANDerr(RAND_F_RAND_POOL_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    pool->entropy_requested = entropy_requested;
    pool->secure = secure;

    return pool;

err:
    OPENSSL_free(pool);
    return ((void*)0);
}
