
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RSA_MAX_PRIME_NUM ;

int rsa_multip_cap(int bits)
{
    int cap = 5;

    if (bits < 1024)
        cap = 2;
    else if (bits < 4096)
        cap = 3;
    else if (bits < 8192)
        cap = 4;

    if (cap > RSA_MAX_PRIME_NUM)
        cap = RSA_MAX_PRIME_NUM;

    return cap;
}
