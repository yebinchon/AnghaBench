
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int UINT ;
typedef scalar_t__ INT ;
typedef int DWORD ;


 int le16 (int) ;
 int le32 (int const) ;
 int src_advance (void const**,int,scalar_t__*,int*,int) ;

__attribute__((used)) static void convert_32_to_16 (const void *src, void *dst, UINT src_stride,
        UINT dst_stride, INT count, UINT freqAcc, UINT adj)
{
    while (count > 0)
    {
        WORD *dest16 = dst;
        *dest16 = le16(le32(*(const DWORD *)src) / 65536);

        dst = (char *)dst + dst_stride;
        src_advance(&src, src_stride, &count, &freqAcc, adj);
    }
}
