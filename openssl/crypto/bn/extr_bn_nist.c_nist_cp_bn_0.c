
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BN_ULONG ;


 int ossl_assert (int) ;

__attribute__((used)) static void nist_cp_bn_0(BN_ULONG *dst, const BN_ULONG *src, int top, int max)
{
    int i;




    for (i = 0; i < top; i++)
        dst[i] = src[i];
    for (; i < max; i++)
        dst[i] = 0;
}
