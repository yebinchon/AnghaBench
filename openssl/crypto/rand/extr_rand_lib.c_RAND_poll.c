
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* add ) (int ,int ,double) ;} ;
typedef int RAND_POOL ;
typedef TYPE_1__ RAND_METHOD ;
typedef int RAND_DRBG ;


 int RAND_DRBG_STRENGTH ;
 int * RAND_DRBG_get0_master () ;
 TYPE_1__ const* RAND_OpenSSL () ;
 int RAND_POOL_MAX_LENGTH ;
 TYPE_1__* RAND_get_rand_method () ;
 int rand_drbg_lock (int *) ;
 int rand_drbg_restart (int *,int *,int ,int ) ;
 int rand_drbg_unlock (int *) ;
 scalar_t__ rand_pool_acquire_entropy (int *) ;
 int rand_pool_buffer (int *) ;
 double rand_pool_entropy (int *) ;
 int rand_pool_free (int *) ;
 int rand_pool_length (int *) ;
 int * rand_pool_new (int,int,int,int ) ;
 scalar_t__ stub1 (int ,int ,double) ;

int RAND_poll(void)
{
    int ret = 0;

    const RAND_METHOD *meth = RAND_get_rand_method();

    if (meth == RAND_OpenSSL()) {

        RAND_DRBG *drbg = RAND_DRBG_get0_master();

        if (drbg == ((void*)0))
            return 0;

        rand_drbg_lock(drbg);
        ret = rand_drbg_restart(drbg, ((void*)0), 0, 0);
        rand_drbg_unlock(drbg);

        return ret;

    } else {
        RAND_POOL *pool = ((void*)0);


        pool = rand_pool_new(RAND_DRBG_STRENGTH, 1,
                             (RAND_DRBG_STRENGTH + 7) / 8,
                             RAND_POOL_MAX_LENGTH);
        if (pool == ((void*)0))
            return 0;

        if (rand_pool_acquire_entropy(pool) == 0)
            goto err;

        if (meth->add == ((void*)0)
            || meth->add(rand_pool_buffer(pool),
                         rand_pool_length(pool),
                         (rand_pool_entropy(pool) / 8.0)) == 0)
            goto err;

        ret = 1;

     err:
        rand_pool_free(pool);
    }

    return ret;
}
