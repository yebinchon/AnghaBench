
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t mp_round_next_power_of_2(uint32_t v)
{
    for (int n = 0; n < 30; n++) {
        if ((1 << n) >= v)
            return 1 << n;
    }
    return 0;
}
