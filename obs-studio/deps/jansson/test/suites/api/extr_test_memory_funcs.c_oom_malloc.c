
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 size_t malloc_used ;

__attribute__((used)) static void *oom_malloc(size_t size)
{
    if (malloc_used + size > 800)
        return ((void*)0);

    malloc_used += size;
    return malloc(size);
}
