
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l ;


 int prng_bytes (unsigned char*,int) ;

long int
get_random(void)
{
    long int l;
    prng_bytes((unsigned char *)&l, sizeof(l));
    if (l < 0)
    {
        l = -l;
    }
    return l;
}
