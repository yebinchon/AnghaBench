
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int
memcmp_constant_time(const void *a, const void *b, size_t size)
{
    const uint8_t *a1 = a;
    const uint8_t *b1 = b;
    int ret = 0;
    size_t i;

    for (i = 0; i < size; i++)
    {
        ret |= *a1++ ^ *b1++;
    }

    return ret;
}
