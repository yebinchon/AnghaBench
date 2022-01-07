
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 int CRYPTO_THREAD_run_once (int *,int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_true (int ) ;
 int once_do_run ;
 int once_run ;
 int once_run_count ;
 int once_run_thread_cb ;
 int run_thread (int *,int ) ;
 int wait_for_thread (int ) ;

__attribute__((used)) static int test_once(void)
{
    thread_t thread;

    if (!TEST_true(run_thread(&thread, once_run_thread_cb))
        || !TEST_true(wait_for_thread(thread))
        || !CRYPTO_THREAD_run_once(&once_run, once_do_run)
        || !TEST_int_eq(once_run_count, 1))
        return 0;
    return 1;
}
