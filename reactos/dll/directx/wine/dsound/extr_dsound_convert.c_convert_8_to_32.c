
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ INT ;
typedef int DWORD ;
typedef int BYTE ;


 int le32 (int) ;
 int src_advance (void const**,int,scalar_t__*,int*,int) ;

__attribute__((used)) static void convert_8_to_32 (const void *src, void *dst, UINT src_stride,
        UINT dst_stride, INT count, UINT freqAcc, UINT adj)
{
    while (count > 0)
    {
        DWORD dest = *(const BYTE *)src, *dest32 = dst;
        *dest32 = le32(dest * 16843009 - 2147483648U);

        dst = (char *)dst + dst_stride;
        src_advance(&src, src_stride, &count, &freqAcc, adj);
    }
}
