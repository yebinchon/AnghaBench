
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int sec_malloc_lock ;
 size_t sh_actual_size (void*) ;

size_t CRYPTO_secure_actual_size(void *ptr)
{
    return 0;

}
