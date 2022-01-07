
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int context_t ;



__attribute__((used)) static inline context_t *context_from_ptr(const void *ptr)
{
    return (context_t*)ptr-1;
}
