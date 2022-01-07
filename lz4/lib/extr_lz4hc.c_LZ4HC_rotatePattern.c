
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pattern ;
typedef int const U32 ;


 int const LZ4HC_rotl32 (int const,int) ;

__attribute__((used)) static U32 LZ4HC_rotatePattern(size_t const rotate, U32 const pattern)
{
    size_t const bitsToRotate = (rotate & (sizeof(pattern) - 1)) << 3;
    if (bitsToRotate == 0)
        return pattern;
    return LZ4HC_rotl32(pattern, (int)bitsToRotate);
}
