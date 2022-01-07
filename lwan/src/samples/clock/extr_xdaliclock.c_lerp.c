
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int POS ;



__attribute__((used)) static inline POS lerp(POS a, POS b, unsigned int anim)
{
    uint32_t part_a = a * (65536 - anim);
    uint32_t part_b = b * (anim + 1);

    return (POS)((part_a + part_b) / 65536);
}
