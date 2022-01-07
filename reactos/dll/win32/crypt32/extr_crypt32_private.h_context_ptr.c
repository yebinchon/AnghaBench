
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void context_t ;



__attribute__((used)) static inline void *context_ptr(context_t *context)
{
    return context+1;
}
