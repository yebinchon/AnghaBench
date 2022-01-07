
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
next_pow2(size_t n)
{
    size_t bit_count = 0;


    if (n == 0)
        return 1;


    if ((n & (n - 1)) == 0)
        return n;


    while (n != 0) {
        n >>= 1;
        bit_count += 1;
    }

    return 1 << bit_count;
}
