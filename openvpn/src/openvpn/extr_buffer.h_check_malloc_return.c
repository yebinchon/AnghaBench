
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int out_of_memory () ;

__attribute__((used)) static inline void
check_malloc_return(const void *p)
{
    if (!p)
    {
        out_of_memory();
    }
}
