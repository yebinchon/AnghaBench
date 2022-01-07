
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int compressFunc_t ;
typedef scalar_t__ LZ4F_blockMode_t ;


 scalar_t__ LZ4F_blockIndependent ;
 int LZ4F_compressBlock ;
 int LZ4F_compressBlockHC ;
 int LZ4F_compressBlockHC_continue ;
 int LZ4F_compressBlock_continue ;
 int LZ4HC_CLEVEL_MIN ;

__attribute__((used)) static compressFunc_t LZ4F_selectCompression(LZ4F_blockMode_t blockMode, int level)
{
    if (level < LZ4HC_CLEVEL_MIN) {
        if (blockMode == LZ4F_blockIndependent) return LZ4F_compressBlock;
        return LZ4F_compressBlock_continue;
    }
    if (blockMode == LZ4F_blockIndependent) return LZ4F_compressBlockHC;
    return LZ4F_compressBlockHC_continue;
}
