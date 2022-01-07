
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



uint64_t
lcg_rand(uint64_t index, uint64_t a, uint64_t c, uint64_t range)
{
    return (index * a + c) % range;
}
