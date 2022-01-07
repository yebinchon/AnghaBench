
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_METHOD ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_finish (int *) ;
 int RUN_ONCE (int *,int ) ;
 int const* default_RAND_meth ;
 int do_rand_init ;
 int * funct_ref ;
 int rand_init ;
 int rand_meth_lock ;

int RAND_set_rand_method(const RAND_METHOD *meth)
{
    if (!RUN_ONCE(&rand_init, do_rand_init))
        return 0;

    CRYPTO_THREAD_write_lock(rand_meth_lock);

    ENGINE_finish(funct_ref);
    funct_ref = ((void*)0);

    default_RAND_meth = meth;
    CRYPTO_THREAD_unlock(rand_meth_lock);
    return 1;
}
