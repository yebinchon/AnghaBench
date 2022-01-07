
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_thread_stop () ;
 int run_multi_thread_test () ;

__attribute__((used)) static void *thread_run(void *arg)
{
    run_multi_thread_test();




    OPENSSL_thread_stop();
    return ((void*)0);
}
