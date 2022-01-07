
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UNLIKELY (int ) ;
 int assert (int) ;
 int posix_memalign (void**,size_t,size_t) ;

__attribute__((used)) static inline void *
lwan_aligned_alloc(size_t n, size_t alignment)
{
    void *ret;

    assert((alignment & (alignment - 1)) == 0);

    n = (n + alignment - 1) & ~(alignment - 1);
    if (UNLIKELY(posix_memalign(&ret, alignment, n)))
        return ((void*)0);

    return ret;
}
