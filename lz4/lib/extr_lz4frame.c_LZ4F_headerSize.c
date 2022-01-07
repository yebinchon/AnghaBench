
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int BYTE ;


 int LZ4F_ERROR_frameHeader_incomplete ;
 int LZ4F_ERROR_frameType_unknown ;
 int LZ4F_ERROR_srcPtr_wrong ;
 int LZ4F_MAGICNUMBER ;
 int LZ4F_MAGIC_SKIPPABLE_START ;
 size_t LZ4F_MIN_SIZE_TO_KNOW_HEADER_LENGTH ;
 int LZ4F_readLE32 (void const*) ;
 int const _1BIT ;
 size_t err0r (int ) ;
 size_t minFHSize ;

size_t LZ4F_headerSize(const void* src, size_t srcSize)
{
    if (src == ((void*)0)) return err0r(LZ4F_ERROR_srcPtr_wrong);


    if (srcSize < LZ4F_MIN_SIZE_TO_KNOW_HEADER_LENGTH)
        return err0r(LZ4F_ERROR_frameHeader_incomplete);


    if ((LZ4F_readLE32(src) & 0xFFFFFFF0U) == LZ4F_MAGIC_SKIPPABLE_START)
        return 8;



    if (LZ4F_readLE32(src) != LZ4F_MAGICNUMBER)
        return err0r(LZ4F_ERROR_frameType_unknown);



    { BYTE const FLG = ((const BYTE*)src)[4];
        U32 const contentSizeFlag = (FLG>>3) & _1BIT;
        U32 const dictIDFlag = FLG & _1BIT;
        return minFHSize + (contentSizeFlag?8:0) + (dictIDFlag?4:0);
    }
}
