
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int odd_constant ;

__attribute__((used)) static inline unsigned int hash_int_shift_mult(const void *keyptr)
{

    unsigned int key = (unsigned int)(long)keyptr;
    unsigned int c2 = odd_constant;

    key = (key ^ 61) ^ (key >> 16);
    key += key << 3;
    key ^= key >> 4;
    key *= c2;
    key ^= key >> 15;
    return key;
}
