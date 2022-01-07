
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_ULONG ;



BN_ULONG bn_div_words(BN_ULONG h, BN_ULONG l, BN_ULONG d)
{
    BN_ULONG ret, waste;

 asm("divq      %4":"=a"(ret), "=d"(waste)
 : "a"(l), "d"(h), "r"(d)
 : "cc");

    return ret;
}
