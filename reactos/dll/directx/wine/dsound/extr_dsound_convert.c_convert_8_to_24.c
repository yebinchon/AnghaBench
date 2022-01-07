
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ INT ;
typedef scalar_t__ BYTE ;


 int src_advance (void const**,int,scalar_t__*,int*,int) ;

__attribute__((used)) static void convert_8_to_24 (const void *src, void *dst, UINT src_stride,
        UINT dst_stride, INT count, UINT freqAcc, UINT adj)
{
    while (count > 0)
    {
        BYTE dest = *(const BYTE *)src;
        BYTE *dest24 = dst;
        dest24[0] = dest;
        dest24[1] = dest;
        dest24[2] = dest - 0x80;

        dst = (char *)dst + dst_stride;
        src_advance(&src, src_stride, &count, &freqAcc, adj);
    }
}
