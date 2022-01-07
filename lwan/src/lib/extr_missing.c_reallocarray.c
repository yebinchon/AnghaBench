
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ UNLIKELY (int) ;
 int errno ;
 int free (void*) ;
 void* malloc (int) ;
 void* realloc (void*,size_t) ;
 int umull_overflow (size_t,size_t,size_t*) ;

void *reallocarray(void *optr, size_t nmemb, size_t size)
{
    size_t total_size;
    if (UNLIKELY(umull_overflow(nmemb, size, &total_size))) {
        errno = ENOMEM;
        return ((void*)0);
    }
    if (UNLIKELY(total_size == 0)) {
        free(optr);
        return malloc(1);
    }
    return realloc(optr, total_size);
}
