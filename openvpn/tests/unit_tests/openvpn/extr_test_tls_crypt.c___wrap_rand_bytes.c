
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



int
__wrap_rand_bytes(uint8_t *output, int len)
{
    for (int i = 0; i < len; i++)
    {
        output[i] = i;
    }
    return 1;
}
