
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 int TEST_true (int ) ;
 int THREADS ;
 int multi_thread_rand_bytes_succeeded ;
 int multi_thread_rand_priv_bytes_succeeded ;
 int run_multi_thread_test () ;
 int run_thread (int *) ;
 int wait_for_thread (int ) ;

__attribute__((used)) static int test_multi_thread(void)
{
    thread_t t[THREADS];
    int i;

    for (i = 0; i < THREADS; i++)
        run_thread(&t[i]);
    run_multi_thread_test();
    for (i = 0; i < THREADS; i++)
        wait_for_thread(t[i]);

    if (!TEST_true(multi_thread_rand_bytes_succeeded))
        return 0;
    if (!TEST_true(multi_thread_rand_priv_bytes_succeeded))
        return 0;

    return 1;
}
