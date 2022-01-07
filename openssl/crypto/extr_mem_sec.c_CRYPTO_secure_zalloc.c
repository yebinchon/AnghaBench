
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CRYPTO_secure_malloc (size_t,char const*,int) ;
 void* CRYPTO_zalloc (size_t,char const*,int) ;
 scalar_t__ secure_mem_initialized ;

void *CRYPTO_secure_zalloc(size_t num, const char *file, int line)
{





    return CRYPTO_zalloc(num, file, line);
}
