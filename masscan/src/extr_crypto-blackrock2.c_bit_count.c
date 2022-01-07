
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static uint64_t
bit_count(uint64_t num)
{
    uint64_t bits = 0;

    while ((num >> bits) > 1)
        bits++;

    return bits;
}
