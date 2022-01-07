
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;



__attribute__((used)) static uint64_t
next_power_of_two(uint64_t num)
{
    uint64_t power_of_two = 1;

    num++;

    while ((uint64_t)(1ULL << power_of_two) < num)
        power_of_two++;

    return (1ULL << power_of_two);
}
