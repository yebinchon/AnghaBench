
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t alloc_len; size_t len; int max_len; unsigned char* buffer; scalar_t__ secure; scalar_t__ attached; } ;
typedef TYPE_1__ RAND_POOL ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 int OPENSSL_secure_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_secure_zalloc (size_t) ;
 unsigned char* OPENSSL_zalloc (size_t) ;
 int RAND_F_RAND_POOL_GROW ;
 int RANDerr (int ,int ) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int rand_pool_grow(RAND_POOL *pool, size_t len)
{
    if (len > pool->alloc_len - pool->len) {
        unsigned char *p;
        const size_t limit = pool->max_len / 2;
        size_t newlen = pool->alloc_len;

        if (pool->attached || len > pool->max_len - pool->len) {
            RANDerr(RAND_F_RAND_POOL_GROW, ERR_R_INTERNAL_ERROR);
            return 0;
        }

        do
            newlen = newlen < limit ? newlen * 2 : pool->max_len;
        while (len > newlen - pool->len);

        if (pool->secure)
            p = OPENSSL_secure_zalloc(newlen);
        else
            p = OPENSSL_zalloc(newlen);
        if (p == ((void*)0)) {
            RANDerr(RAND_F_RAND_POOL_GROW, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        memcpy(p, pool->buffer, pool->len);
        if (pool->secure)
            OPENSSL_secure_clear_free(pool->buffer, pool->alloc_len);
        else
            OPENSSL_clear_free(pool->buffer, pool->alloc_len);
        pool->buffer = p;
        pool->alloc_len = newlen;
    }
    return 1;
}
