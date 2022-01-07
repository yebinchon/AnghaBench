
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int sec_malloc_lock ;
 int secure_mem_initialized ;
 int sh_allocated (void const*) ;

int CRYPTO_secure_allocated(const void *ptr)
{
    return 0;

}
