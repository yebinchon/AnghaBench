
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 int malloc_called ;

__attribute__((used)) static void *my_malloc(size_t size)
{
    malloc_called = 1;
    return malloc(size);
}
