
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,int *) ;
 int TEST_ptr_eq (void*,int *) ;
 int TEST_ptr_null (void*) ;
 int TEST_true (int ) ;
 int destructor_run_count ;
 int thread_local_key ;
 int thread_local_thread_cb_ok ;

__attribute__((used)) static void thread_local_thread_cb(void)
{
    void *ptr;

    ptr = CRYPTO_THREAD_get_local(&thread_local_key);
    if (!TEST_ptr_null(ptr)
        || !TEST_true(CRYPTO_THREAD_set_local(&thread_local_key,
                                              &destructor_run_count)))
        return;

    ptr = CRYPTO_THREAD_get_local(&thread_local_key);
    if (!TEST_ptr_eq(ptr, &destructor_run_count))
        return;

    thread_local_thread_cb_ok = 1;
}
