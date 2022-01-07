
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UNLIKELY (int) ;
 size_t lwan_nextpow2 (size_t) ;

__attribute__((used)) static inline size_t align_size(size_t unaligned_size)
{
    const size_t aligned_size = lwan_nextpow2(unaligned_size);

    if (UNLIKELY(unaligned_size >= aligned_size))
        return 0;

    return aligned_size;
}
