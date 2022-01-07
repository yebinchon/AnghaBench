
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 int CRYPTO_THREAD_cleanup_local (int *) ;
 void* CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_init_local (int *,int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr_null (void*) ;
 int TEST_true (int ) ;
 int destructor_run_count ;
 int run_thread (int *,int ) ;
 int thread_local_destructor ;
 int thread_local_key ;
 int thread_local_thread_cb ;
 int thread_local_thread_cb_ok ;
 int wait_for_thread (int ) ;

__attribute__((used)) static int test_thread_local(void)
{
    thread_t thread;
    void *ptr = ((void*)0);

    if (!TEST_true(CRYPTO_THREAD_init_local(&thread_local_key,
                                            thread_local_destructor)))
        return 0;

    ptr = CRYPTO_THREAD_get_local(&thread_local_key);
    if (!TEST_ptr_null(ptr)
        || !TEST_true(run_thread(&thread, thread_local_thread_cb))
        || !TEST_true(wait_for_thread(thread))
        || !TEST_int_eq(thread_local_thread_cb_ok, 1))
        return 0;
    if (!TEST_true(CRYPTO_THREAD_cleanup_local(&thread_local_key)))
        return 0;
    return 1;
}
