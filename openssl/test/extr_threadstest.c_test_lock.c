
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRYPTO_RWLOCK ;


 int CRYPTO_THREAD_lock_free (int *) ;
 int * CRYPTO_THREAD_lock_new () ;
 int CRYPTO_THREAD_read_lock (int *) ;
 int CRYPTO_THREAD_unlock (int *) ;
 int TEST_true (int ) ;

__attribute__((used)) static int test_lock(void)
{
    CRYPTO_RWLOCK *lock = CRYPTO_THREAD_lock_new();

    if (!TEST_true(CRYPTO_THREAD_read_lock(lock))
        || !TEST_true(CRYPTO_THREAD_unlock(lock)))
        return 0;

    CRYPTO_THREAD_lock_free(lock);

    return 1;
}
