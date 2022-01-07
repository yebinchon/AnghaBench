
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ INT ;
typedef int BYTE ;


 int src_advance (void const**,int,scalar_t__*,int*,int) ;

__attribute__((used)) static void convert_24_to_24 (const void *src, void *dst, UINT src_stride,
        UINT dst_stride, INT count, UINT freqAcc, UINT adj)
{
    while (count > 0)
    {
        BYTE *dest24 = dst;
        const BYTE *src24 = src;

        dest24[0] = src24[0];
        dest24[1] = src24[1];
        dest24[2] = src24[2];

        dst = (char *)dst + dst_stride;
        src_advance(&src, src_stride, &count, &freqAcc, adj);
    }
}
