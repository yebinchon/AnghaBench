
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int buf ;
struct TYPE_6__ {int crngt_prev; int crngt_pool; } ;
struct TYPE_5__ {int libctx; } ;
typedef int RAND_POOL ;
typedef TYPE_1__ RAND_DRBG ;
typedef TYPE_2__ CRNG_TEST_GLOBAL ;


 int CRNGT_BUFSIZ ;
 int EVP_MAX_MD_SIZE ;
 int OPENSSL_CTX_RAND_CRNGT_INDEX ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int crngt_get_entropy (int ,int ,unsigned char*,unsigned char*,unsigned int*) ;
 scalar_t__ memcmp (int ,unsigned char*,unsigned int) ;
 int memcpy (int ,unsigned char*,unsigned int) ;
 TYPE_2__* openssl_ctx_get_data (int ,int ,int *) ;
 int rand_crng_ossl_ctx_method ;
 int rand_pool_add (int *,unsigned char*,size_t,size_t) ;
 size_t rand_pool_bytes_needed (int *,int) ;
 unsigned char* rand_pool_detach (int *) ;
 int rand_pool_free (int *) ;
 int * rand_pool_new (int,int,size_t,size_t) ;

size_t rand_crngt_get_entropy(RAND_DRBG *drbg,
                              unsigned char **pout,
                              int entropy, size_t min_len, size_t max_len,
                              int prediction_resistance)
{
    unsigned char buf[CRNGT_BUFSIZ], md[EVP_MAX_MD_SIZE];
    unsigned int sz;
    RAND_POOL *pool;
    size_t q, r = 0, s, t = 0;
    int attempts = 3;
    CRNG_TEST_GLOBAL *crngt_glob
        = openssl_ctx_get_data(drbg->libctx, OPENSSL_CTX_RAND_CRNGT_INDEX,
                               &rand_crng_ossl_ctx_method);

    if (crngt_glob == ((void*)0))
        return 0;

    if ((pool = rand_pool_new(entropy, 1, min_len, max_len)) == ((void*)0))
        return 0;

    while ((q = rand_pool_bytes_needed(pool, 1)) > 0 && attempts-- > 0) {
        s = q > sizeof(buf) ? sizeof(buf) : q;
        if (!crngt_get_entropy(drbg->libctx, crngt_glob->crngt_pool, buf, md,
                               &sz)
            || memcmp(crngt_glob->crngt_prev, md, sz) == 0
            || !rand_pool_add(pool, buf, s, s * 8))
            goto err;
        memcpy(crngt_glob->crngt_prev, md, sz);
        t += s;
        attempts++;
    }
    r = t;
    *pout = rand_pool_detach(pool);
err:
    OPENSSL_cleanse(buf, sizeof(buf));
    rand_pool_free(pool);
    return r;
}
