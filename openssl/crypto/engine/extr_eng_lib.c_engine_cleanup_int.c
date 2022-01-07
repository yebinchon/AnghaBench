
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_lock_free (int ) ;
 int * cleanup_stack ;
 int engine_cleanup_cb_free ;
 int global_engine_lock ;
 scalar_t__ int_cleanup_check (int ) ;
 int sk_ENGINE_CLEANUP_ITEM_pop_free (int *,int ) ;

void engine_cleanup_int(void)
{
    if (int_cleanup_check(0)) {
        sk_ENGINE_CLEANUP_ITEM_pop_free(cleanup_stack,
                                        engine_cleanup_cb_free);
        cleanup_stack = ((void*)0);
    }
    CRYPTO_THREAD_lock_free(global_engine_lock);
}
