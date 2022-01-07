
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressionParameters {int cLevel; char const* dictBuf; int dictSize; int blockFunction; int cleanupFunction; int resetFunction; int initFunction; } ;


 int LZ4HC_CLEVEL_MIN ;
 int LZ4_compressBlockNoStream ;
 int LZ4_compressBlockNoStreamHC ;
 int LZ4_compressBlockStream ;
 int LZ4_compressBlockStreamHC ;
 int LZ4_compressCleanupNoStream ;
 int LZ4_compressCleanupStream ;
 int LZ4_compressCleanupStreamHC ;
 int LZ4_compressInitNoStream ;
 int LZ4_compressInitStream ;
 int LZ4_compressInitStreamHC ;
 int LZ4_compressResetNoStream ;
 int LZ4_compressResetStream ;
 int LZ4_compressResetStreamHC ;

__attribute__((used)) static void LZ4_buildCompressionParameters(
    struct compressionParameters* pParams,
    int cLevel, const char* dictBuf, int dictSize)
{
    pParams->cLevel = cLevel;
    pParams->dictBuf = dictBuf;
    pParams->dictSize = dictSize;

    if (dictSize) {
        if (cLevel < LZ4HC_CLEVEL_MIN) {
            pParams->initFunction = LZ4_compressInitStream;
            pParams->resetFunction = LZ4_compressResetStream;
            pParams->blockFunction = LZ4_compressBlockStream;
            pParams->cleanupFunction = LZ4_compressCleanupStream;
        } else {
            pParams->initFunction = LZ4_compressInitStreamHC;
            pParams->resetFunction = LZ4_compressResetStreamHC;
            pParams->blockFunction = LZ4_compressBlockStreamHC;
            pParams->cleanupFunction = LZ4_compressCleanupStreamHC;
        }
    } else {
        pParams->initFunction = LZ4_compressInitNoStream;
        pParams->resetFunction = LZ4_compressResetNoStream;
        pParams->cleanupFunction = LZ4_compressCleanupNoStream;

        if (cLevel < LZ4HC_CLEVEL_MIN) {
            pParams->blockFunction = LZ4_compressBlockNoStream;
        } else {
            pParams->blockFunction = LZ4_compressBlockNoStreamHC;
        }
    }
}
