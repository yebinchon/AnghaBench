
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_mem_debug_malloc (void*,size_t,int,char const*,int) ;
 int FAILTEST () ;
 int INCREMENT (int ) ;
 scalar_t__ allow_customize ;
 scalar_t__ call_malloc_debug ;
 void* malloc (size_t) ;
 int malloc_count ;
 void* malloc_impl (size_t,char const*,int) ;

void *CRYPTO_malloc(size_t num, const char *file, int line)
{
    void *ret = ((void*)0);

    INCREMENT(malloc_count);
    if (malloc_impl != ((void*)0) && malloc_impl != CRYPTO_malloc)
        return malloc_impl(num, file, line);

    if (num == 0)
        return ((void*)0);

    FAILTEST();
    if (allow_customize) {





        allow_customize = 0;
    }

    if (call_malloc_debug) {
        CRYPTO_mem_debug_malloc(((void*)0), num, 0, file, line);
        ret = malloc(num);
        CRYPTO_mem_debug_malloc(ret, num, 1, file, line);
    } else {
        ret = malloc(num);
    }





    return ret;
}
