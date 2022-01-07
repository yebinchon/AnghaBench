
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int hash_int_key_cmp(const void *k1, const void *k2)
{
    intptr_t a = (intptr_t)k1;
    intptr_t b = (intptr_t)k2;

    return (a > b) - (a < b);
}
