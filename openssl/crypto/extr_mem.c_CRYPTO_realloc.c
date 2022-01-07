
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_free (void*,char const*,int) ;
 void* CRYPTO_malloc (size_t,char const*,int) ;
 int CRYPTO_mem_debug_realloc (void*,void*,size_t,int,char const*,int) ;
 int FAILTEST () ;
 int INCREMENT (int ) ;
 scalar_t__ call_malloc_debug ;
 void* realloc (void*,size_t) ;
 int realloc_count ;
 void* realloc_impl (void*,size_t,char const*,int) ;

void *CRYPTO_realloc(void *str, size_t num, const char *file, int line)
{
    INCREMENT(realloc_count);
    if (realloc_impl != ((void*)0) && realloc_impl != &CRYPTO_realloc)
        return realloc_impl(str, num, file, line);

    FAILTEST();
    if (str == ((void*)0))
        return CRYPTO_malloc(num, file, line);

    if (num == 0) {
        CRYPTO_free(str, file, line);
        return ((void*)0);
    }


    if (call_malloc_debug) {
        void *ret;
        CRYPTO_mem_debug_realloc(str, ((void*)0), num, 0, file, line);
        ret = realloc(str, num);
        CRYPTO_mem_debug_realloc(str, ret, num, 1, file, line);
        return ret;
    }



    return realloc(str, num);

}
