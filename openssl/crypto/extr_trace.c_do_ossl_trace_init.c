
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * CRYPTO_THREAD_lock_new () ;
 int * trace_lock ;

__attribute__((used)) static int do_ossl_trace_init(void)
{
    trace_lock = CRYPTO_THREAD_lock_new();
    return trace_lock != ((void*)0);
}
